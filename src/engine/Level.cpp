#include "Level.hpp"

Level::Level(char* levelName) {
	this->levelName = levelName;
}

void Level::loadLevel(NutGame* game) {
   bool madePlayer = false;
   std::FILE *file = fopen(levelName, "r");
   char c = 'a';
   int row = 0;
   game->gameGrid.clear();
   while(c != '-') {
      std::vector<Movable*> tmp(NUMCOLS);
   //for (int row = 0; row < NUMROWS; row++) {
      for (int col = 0; col< NUMCOLS; col++) {
         c = fgetc(file);
         //They are all .99 because there  is some rounding errors with collision detection if they are 1
         if (c == 'X') {
            tmp[col] = new StoneBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f, &(game->psystem));
         }
         else if (c == 'S') {
            tmp[col] = new SandBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f, &(game->psystem));
         }
         else if (c == 'C') {
            tmp[col] = new CrystalBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f, &(game->psystem));
         }
         else if (c == 'L') {
            tmp[col] = new LavaBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f, &(game->psystem));
         }
         else if (c == 'R') {
            tmp[col] = new DirtBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f, 1, &(game->psystem));
         }
         else if (c == 'G') {
            tmp[col] = new DirtBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f, 3, &(game->psystem));
         }
         else if (c == 'B') {
            tmp[col] = new DirtBlock(glm::vec3(col, -row, 0), 0.99f, 0.99f, 2, &(game->psystem));
         }
         else if (c == 'P') {
            game->player = Player(glm::vec3(col, -row, 0), 0.99f, 0.99f);
            tmp[col] = &(game->player);
            madePlayer = true;
         }
         else if (c == '0') {
            tmp[col] = 0;
         }
         else if (c == 'N') {
            tmp[col] = new Nut(glm::vec3(col, -row, 0), 0.99f, 0.99f);
            game->addToNutsLeft();
         }
         else if (c == 'H') {
            tmp[col] = new HardHat(glm::vec3(col, -row, 0), 0.99f, 0.99f);
         }
         else if (c == 'D') {
            tmp[col] = new MovableSuperDrill(glm::vec3(col, -row, 0), 0.99f, 0.99f);
         }
         else if (c == 'Y') {
            tmp[col] = new MovableDynamite(glm::vec3(col, -row, 0), 0.99f, 0.99f);
         }
         fgetc(file);
      }
      
      game->gameGrid.push_back(tmp);
      row++;
      
   }
   
   if (!madePlayer) {
      for (int count = 0; count < row; count++) {
         for (int col = 0; col < NUMCOLS; col++) {
            if (game->gameGrid[count][col] != 0) {
               game->gameGrid[count][col]->moveVertical(-6);
            }
         }
      }
      
      for (int count = 0; count < 6; count++) {
         std::vector<Movable*> tmp(NUMCOLS);
         for (int col = 0; col < NUMCOLS; col++) {
            tmp[col] = 0;
         }
         game->gameGrid.insert(game->gameGrid.begin(), tmp);
         row++;
      }

      game->player.moveTo(glm::vec2((int)(game->player.getCenter().x), 0));
      game->gameGrid[0][(int)(game->player.getCenter().x)] = &(game->player);
   }
   
   game->setNumRows(row);
   
   for (int count = 0; count < row; count++) {
      for (int col = 0; col< NUMCOLS; col++) {
         DEBUG("row: " << count << "  " << game->gameGrid[count][col]);
      }
   }
   DEBUG("HERE");

   fclose(file);
}

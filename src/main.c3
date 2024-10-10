module uncraft;

import raylib5;

const SNAKE_LENGTH = 256;
const SQUARE_SIZE = 32;
const int SCREEN_WIDTH = 800;
const int SCREEN_HEIGHT = 600;

fn void main()
{
	rl::initWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "Uncraft");
    rl::setTargetFPS(60);

    while (!rl::windowShouldClose())    // Detect window close button or ESC key
    {
	rl::beginDrawing();

    rl::clearBackground(rl::RAYWHITE);

    rl::endDrawing();
    }

   

	rl::closeWindow();
}



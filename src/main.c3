module uncraft;

import raylib5;

const int SCREEN_WIDTH = 800;
const int SCREEN_HEIGHT = 600;

fn void main()
{

	rl::initWindow(SCREEN_WIDTH, SCREEN_HEIGHT, "Uncraft");
    Texture2D texture = rl::loadTexture("resources/textures/tile.png"); 
    rl::setTargetFPS(60);

    while (!rl::windowShouldClose())    // Detect window close button or ESC key
    {
	rl::beginDrawing();

    rl::clearBackground(rl::RAYWHITE);

    rl::drawTexture(texture, SCREEN_WIDTH/2 - texture.width/2, SCREEN_HEIGHT/2 - texture.height/2, rl::RAYWHITE);

    rl::drawText("this IS a texture!", 360, 370, 10, rl::GRAY);
    rl::drawText(rl::textFormat("FPS : %u", rl::getFPS()), 10, 10, 20, rl::RED);

    rl::endDrawing();
    }

   
    rl::unloadTexture(texture);
	rl::closeWindow();
}



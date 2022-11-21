#include <SFML/Graphics.hpp>

/**
 * Main function, program execution begins and ends here 
 */
int main() {
    int wsx = 500; /* Window size x-value */
    int wsy = 500; /* Window size y-value */

    sf::RenderWindow window(sf::VideoMode(wsx,wsy), "Maze Game by Dalton Kinney");
    sf::RectangleShape wall(sf::Vector2f(wsx, 20));
    wall.setFillColor(sf::Color::Red);

    while (window.isOpen()) /* Main loop for game */
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
        }

        window.clear();

        window.draw(wall);
        
        window.display();
    }

    return 0;

}

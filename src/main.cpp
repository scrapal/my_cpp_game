#include <SFML/Graphics.hpp>
#include <iostream>
#include <filesystem>

using namespace std;

class Player : public sf::Sprite
{
public:
    void load(){
        sf::Texture texture;
        if (!texture.loadFromFile("assets/Player.png"))
            throw std::runtime_error("load assets/Player.png failed");

        cout << "texture:" << texture.getSize().x << " " << texture.getSize().y << endl;

        setTexture(texture);
    }

    void handle_input(){
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::Left))
            move(-3, 0);
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::Right))
            move(3, 0);
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::Up))
            move(0, -3);
        if (sf::Keyboard::isKeyPressed(sf::Keyboard::Down))
            move(0, 3);
    }
};

int main()
{
    filesystem::current_path("../..");
    cout << "Current directory:" << filesystem::current_path() << endl;

    Player player;
    player.load();

    auto window = sf::RenderWindow{ { 1280u, 720u }, "game_learn" };
    window.setFramerateLimit(60);

    while (window.isOpen())
    {
        for (auto event = sf::Event{}; window.pollEvent(event);)
        {
            if (event.type == sf::Event::Closed)
            {
                window.close();
            }
        }

        player.handle_input();
        window.clear(sf::Color::White);
        window.draw(player);
        window.display();
    }
}
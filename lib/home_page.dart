import 'package:flutter/material.dart';
import 'details_page.dart';

List<ImageDetails> _images = [
  ImageDetails(
    imagePath: 'images/1-Mona_Lisa.jpg',
    artist: 'Leonardo da Vinci',
    title: 'Mona Lisa',
    details:
        'This portrait is widely considered one of the greatest works of art in history. It depicts a woman with a mysterious smile, and her expression has captivated viewers for centuries.',
  ),
  ImageDetails(
    imagePath: 'images/2-The_Last_Supper.jpg',
    artist: 'Leonardo da Vinci',
    title: 'The Last Supper',
    details:
        'This mural depicts the final meal shared by Jesus and his disciples. The painting is known for its composition, which creates a sense of drama and tension.',
  ),
  ImageDetails(
    imagePath: 'images/3-The_Scream.jpg',
    artist: 'Edward Munch',
    title: 'The Scream',
    details:
        'This painting is known for its expressionistic style and vivid colors. It depicts a figure with a haunting scream, and it is often interpreted as a representation of anxiety and despair.',
  ),
  ImageDetails(
    imagePath: 'images/4-Starry_Night.jpg',
    artist: 'Vincent van Gogh',
    title: 'Starry Night',
    details:
        'This painting depicts a night sky with swirling stars and a crescent moon. The colors and brushstrokes create a sense of movement and energy, and the painting has become an iconic representation of the artist\'s style.',
  ),
  ImageDetails(
    imagePath: 'images/5-The_Creation_of_Adam.jpg',
    artist: 'Michelangelo',
    title: 'The Creation of Adam',
    details:
        'This fresco depicts the moment when God gives life to Adam, and the image has become an iconic representation of human creation.',
  ),
  ImageDetails(
    imagePath: 'images/6-The_Night_Watch.jpg',
    artist: 'Rembrandt',
    title: 'The Night Watch',
    details:
        'This painting depicts a group of militia members, and it is known for its dramatic use of light and shadow. The image is complex and dynamic, and it has become a masterpiece of the Dutch Golden Age.',
  ),
  ImageDetails(
    imagePath: 'images/7-The_Birth_of_Venus.jpg',
    artist: ' Sandro Botticelli',
    title: 'The Birth of Venus',
    details:
        'This painting depicts the goddess Venus emerging from the sea on a shell. The image is graceful and elegant, and it has become an iconic representation of the Italian Renaissance.',
  ),
  ImageDetails(
    imagePath: 'images/8-The_School_of_Athens.jpg',
    artist: 'Raphael',
    title: 'The School of Athens',
    details:
        'This fresco is also part of the decoration of the Sistine Chapel, and it depicts a group of ancient Greek philosophers. The painting is known for its harmonious composition and balance of light and shadow.',
  ),
  ImageDetails(
    imagePath: 'images/9-The_Son_of_Man.jpg',
    artist: 'René Magritte',
    title: 'The Son of Man',
    details:
        'The painting depicts a man in a suit and bowler hat, standing in front of a wall, with a green apple hovering in front of his face, obscuring his features.',
  ),
  ImageDetails(
    imagePath: 'images/10-Las_Meninas.jpg',
    artist: 'Diego Velázquez',
    title: 'Las Meninas',
    details:
        'This painting depicts a group of people, including a young princess and her attendants, in a royal chamber. The image is complex and layered, and it has become one of the most famous portraits in Spanish art history.',
  ),
  ImageDetails(
    imagePath: 'images/11-Spoliarium.jpg',
    artist: 'Juan Luna',
    title: 'Spoliarium',
    details:
        'A large-scale work that depicts the Roman gladiators who were stripped of their weapons and armor after a battle in the arena. The painting is known for its dramatic lighting and powerful composition, and it has become an iconic work of Philippine art.',
  ),
  ImageDetails(
    imagePath: 'images/12-Ivan_the_Terrible.jpg',
    artist: 'Ilya Repin',
    title: 'Ivan the Terrible and His Son',
    details:
        'The painting depicts a dramatic scene in which Ivan the Terrible, the Russian ruler, is shown cradling his dying son after striking him in a fit of rage. The painting is known for its intense emotion and powerful portrayal of the tragedy, as Ivan the Terrible is shown with a pained expression, his son limp in his arms.',
  ),
  ImageDetails(
    imagePath: 'images/13-American_Gothic.jpg',
    artist: 'Grant Wood',
    title: 'American Gothic',
    details:
        'The painting depicts a farmer and his daughter standing in front of their Gothic-style farmhouse, with the farmer holding a pitchfork.',
  ),
  ImageDetails(
    imagePath: 'images/14-Persistence_of_Memory.jpg',
    artist: 'Salvador Dali',
    title: 'Persistence of Memory',
    details:
        'The painting depicts a surreal landscape with melting watches draped over various objects.',
  ),
  ImageDetails(
    imagePath: 'images/15-Girl_with_a_Pearl_Earring.jpg',
    artist: 'Johannes Vermeer',
    title: 'Girl with a Pearl Earring',
    details:
        'The painting depicts a young woman looking over her shoulder, wearing a pearl earring and a turban.',
  ),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 63, 63, 63),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              'Joshua Caleb D. Bolito',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w100,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'THE ART GALLERY',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 49, 49, 49),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              imagePath: _images[index].imagePath,
                              title: _images[index].title,
                              artist: _images[index].artist,
                              details: _images[index].details,
                              index: index,
                            ),
                          ),
                        );
                      },
                      child: Hero(
                        tag: 'logo$index',
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(_images[index].imagePath),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageDetails {
  final String imagePath;
  final String artist;
  final String title;
  final String details;
  ImageDetails({
    @required this.imagePath,
    @required this.artist,
    @required this.title,
    @required this.details,
  });
}

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget{

  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    
    const String apptitle ='flutter demo';

    return MaterialApp(

      title : apptitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(apptitle),
          centerTitle: true,
          backgroundColor: Colors.blueGrey[900],
          titleTextStyle: const TextStyle(color: Colors.white),
        ),
        body: SingleChildScrollView(
          child: Column(

            children: [
              ImageSection(
                image: 'images/diamond.png',
              ),

              TitleSection(

                name: 'Campaign',
                location: 'Switzerland',
              ),

              ButtonSection(),

              TextSection( 

              text:  'he main body of a book or other piece of writing, as distinct from other material such as notes, appendices, and illustrations.',
              
              ),


            ],
          ),
        ),
      ),
      );
  }
  }
      class TitleSection extends StatelessWidget {
      
      
      const TitleSection({super.key, required this.name, required this.location});
      
      final String name;
      final String location;
      
        @override
        Widget build(BuildContext context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(

              children: [

                Expanded (
                  child : Column (

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Padding (
                        padding : const EdgeInsets.only(bottom:8.0),
                        child: Text(
                          name,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ),
                      Text(
                        location,
                        style: TextStyle(color: Colors.grey[500], fontSize: 10),
                      ),
                    ],
                  ),
                ),

                Icon (Icons.star, color: Colors.red[500]),
                const SizedBox(width:4),
                const Text('41'),
              ],
            ),
          );
        }
      
      }

      class ButtonSection extends StatelessWidget {

        const ButtonSection ({super.key});

        @override
        Widget build (BuildContext context) {
          final Color color = Theme.of(context).primaryColor;

          return SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
                ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
                ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
              ],
            ),
          );
        }
      }

      class ButtonWithText extends StatelessWidget {
        const ButtonWithText({
          super.key,
          required this.color,
          required this.icon,
          required this.label,
        });

        final Color color;
        final IconData icon;
        final String label;

        @override
        Widget build(BuildContext context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color),
              const SizedBox(height: 8),
              Text(
                label,
                style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.bold),
              ),
            ],
          );
        }
      }



      class TextSection extends StatelessWidget {
        const TextSection({super.key, required this.text});

        final String text;

        @override
        Widget build(BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              text,
              softWrap: true,
              style: const TextStyle(fontSize: 14),
            ),
          );
        }
      }

      class ImageSection extends StatelessWidget {
        const ImageSection({super.key, required this.image});

        final String image;

        @override
        Widget build(BuildContext context) {
          return Image.asset(
            image,
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,
          );
        }
      }
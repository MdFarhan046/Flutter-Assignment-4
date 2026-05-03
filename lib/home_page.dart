import 'package:flutter/material.dart';
import 'package:md_farhan_ahmed_046_63b/converter_page.dart';
import 'package:md_farhan_ahmed_046_63b/login_page.dart';
import 'package:md_farhan_ahmed_046_63b/register_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: const Color.fromARGB(255, 252, 251, 250),
        // title: Text("Homepage"),
        //leading: Icon(Icons.home),
        title: Center(child: Text("HomePage")),
        actions: [
          //IconButton(onPressed:(){}, icon: Icon(Icons.settings)),
          TextButton(onPressed: (){
             Navigator.push(context,MaterialPageRoute(builder: (context){
                   return LoginPage();
             }));
          }, 
          child: Text("Login")),
          TextButton(onPressed: (){
             Navigator.push(context,MaterialPageRoute(builder: (context){
                return RegisterPage();
             }));
          },child:Text("Register")),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            tooltip: "Notifications",
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
            tooltip: "Profile",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        tooltip: "Add Something",
        child: Icon(Icons.add),
      ),
      drawer: NavigationDrawer(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blueGrey),
            accountName: Text("Name"),
            accountEmail: Text("Email"),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: Text("HomePage"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("ProfilePage"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text("Security & Privacy"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
          ListTile(
             title:Text("ConverterPage"),
             onTap:(){
                Navigator.pop(context);
                Navigator.push(context,MaterialPageRoute(builder: (context){return ConverterPage();}));
             },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
            onTap: () {},
          ),
          
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello World",
              style: TextStyle(fontSize: 30, color: Colors.redAccent),
            ),
            Text(
              "Welcome to Flutter",
              style: TextStyle(color: Colors.amber, fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context){
                              return ConverterPage();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.black,
                    ),
                    child: Text("Converter Page"),
                  ),
                  SizedBox(width: 20),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text("OutlineButton"),
                  ),
                  SizedBox(width: 20),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      side: BorderSide(color: Colors.white),
                    ),
                    child: Text("TextButton"),
                  ),
                  // IconButton(onPressed: (){}, icon: Icon(Icons.search))
                ],
              ),
            ),
            SizedBox(
              height: 200,
              width: 290,
              child: Card(
                color: Colors.blue,
                child: Center(
                  child: Image.asset(
                    "assets/images/TanguarHaor.png",
                    height: 300,
                    width: 300,
                    
                  ),
                ),
              ),
            ),

            
            Container(
              height: 300,
              width: 300,
              alignment: Alignment.center,

              // padding: EdgeInsets.all(20),
              padding: EdgeInsets.fromLTRB(30, 40, 10, 60),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                border: Border.all(color: Colors.tealAccent, width: 3),
                borderRadius: BorderRadius.all(Radius.circular(20)),

                //shape: BoxShape.circle,
              ),

              // child:Text("I am Container!!",
              //  style:TextStyle(
              //    color:Colors.black,
              //    fontSize: 25,
              //  )),
              child: Image.network(
                "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMVFhUXGBcYGBgXFxgdFxgYGBcYFxgYFxUYHSggGBolHRUXITEhJSkrLi4uFx8zODMtNygtLi0BCgoKDg0OGxAQGy0lHyYvLS0tLS0tLS0tLS0tLS0tLS0tLS0vLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAAFAAIDBAYBB//EAEsQAAECBAIGBgYFCwIEBwAAAAECEQADBCESMQUGIkFRYRMycYGRoRQjQlKx0RYkksHhBxUzQ1NicoKi0vA0k2OEssIlRFRkc5Tx/8QAGQEAAwEBAQAAAAAAAAAAAAAAAQIDBAAF/8QALhEAAgIBAgQEBQUBAQAAAAAAAAECEQMhMRJBUfAEEyKBFDJhkaFCUnHh8dGx/9oADAMBAAIRAxEAPwDyKYmI0RZJBzhgktkRG5x10MSlpqNVDAYkWgxERAkGI945ijjQsMDUOh3FHcUICE0dqDQkQYckRGDF+n0ZPWMSZSiNxZgex84dCsqLO6IVCCw1fqv2KvFPzhTNW6prSVfaR/dHO2GKLeqg2SeZ+6NlQquIz2rWhZ6EMuWxc5qR/dGmpaOYDdI+2j+6MUoyvY2KSrcP0q7CJKg2irTgjPCP50f3RLNNusj/AHJf90PToW0ec/lJW65Q/j/7Yn1cP1ZH83/UYdrhoafOmSyjoiEhTkz5IzKWzXyibQOipsuUELMkEFX/AJiRvJPv84nOEnBaDwklJhOjzjYaN6sZalpsJvNkD/mJP98H6OslJF6in/35X90Nji1uCbT2Ldem0eW6flFFZN5kK8Uj73j0yo0hIIb0mn/35X90YzWDRsqbO6QVdMBhSP8AUyswTz4ERpwPhnZl8QuKFIzBcFmjk6nI5QWmaJlW+uUgI/8AdS4cNGyWY1tJ/wDZT9wjd5kObPO8rJukB6emUpQSkFSjkOPjCnUE1IJMtQGbkEbwN/MgQUlaKlBToqZc1rqTInpMzA+0wYPaJJ1fTKbEurULu5QSxLtnvIT4chHJqS0OacXqjPLlHCbbodoNJAyyIglVzKNgUmpL3I2LC7i+/KH6Gm0WIgelPZsRlXD3yhVXGgyb8tl7SoPRpDGMzVSza0abSk2WwDzMg2WV4CVKpe/pP6YtkWhHFLUIUEjDIJa/+fOICnYeLYnSxTOcebDKKc2YjDmtm5Q1pInq37gRd1wyoTtiLYCHfa8oiqglwb+UZWtDdGWvsGqabsjshRTk5DOFGpS0MThqZZM4xL0rZxIins7RDNTePJqSR7dxbJUzucSCY8UwIsISIaMmxZRSJARHFQ14SUvDWLR1IeE2cIw1444ehogrHXOGNRZRF82BtbkMu6Jkp3mIa5Lpfek+R/H4wk9h8fzBuRqqhX6xXgInOp6P2i/ARf1eqcctKt7Me0WMFyY9mPhfDySko7nm/EZ02nLYzP0Sl/tF+CY4nVOXbbX/AE/KNGuIguG+CwftEfjMqesgJL1TlH21/wBPyh6dUpLdeZ/T/bBuUu8TShCvweFfpKR8Xkf6jPjVKT7y/wCn+2F9EpPvL8U/2xokpaHBEd8Lh/ag/EZX+oz8vVCRxmeI/tiwNUqd/b+0PlBpAhwN4D8Lh/ahl4jJ+4EJ1Spv+J9r8IllaoU7FLL+1+EGEKvFuUv97yhH4fGv0ofz59TMfQqn3pX9oxFP1Rpkh8KvtGNpMUDfF5QE1hrBLlKV0jMC2zv3ecd5OLdxX2FlkybJs890bL+tKEkHCHsHJOEhhxusJ8YKYFFtlXgeXzHjD9WVBAMzplJxKCcQRtBI6xTzv/TGj/OKDtGvVZxaS3WudneBcf8A7fHhjSvqNnncq6GWmSVXsWY7jla/mPERJoSW6xbONDVVkuYlXSVanuG6K2EFJGQck4AXfPvitokSAcSKorI3GUU7+JiyXrRBy9DK9eslWW4fCKc6XbKLkyaCr9J5QlKS7GYfsxV6meLaOTh9XD8R3QOqXZrwQm1AwhPSFn92K9StP7Q/ZhZDwbKEpMMrbERas/W8oZpNAwu/CJNell4y9aOy5lhCiOULCFDJsDSsrrFg0VigDmYf0lojUWNozSaNcUxkxB4RGxEWMQ3xwKT/AIYm4rqUUmRxKCwjimhYoK0A9RhjoG+HvDcLmOo6zoD3jqUu4ORDf58e6OKtCSY76HfUvapVBBXLO4v9x+6NigvHn0qb0c9C9ys/gr598b2kOzHpeAyXi4XujH4uFZOJbMeqIikQ/OOho3mJqxqUxKiGQ9MBhiqJcUOBhgjuKEKoemOphmKHJVACToMWpU8j/BFNJiZHaIVodFxVWps/IRi9edMrSlKEm6i+QyH4kRrsDjrJHaYwemKQTat+mktL3FR9m97b1ECMniZVjaW70LYknNN7LUt6Pr1oAGIAywDdIYrBBI7yTEiNZanF1x9hDfCINGaLCjh9JkCxLlZ3X4QQl6vJe9XSsx9svlzAia2RGTjxMrytY6hlMoZk9RJ4cuUSaI1hnrBKlh0hRGyngeXOO0mrowq+uUl8Q/SHMHds3GR74m0foBCETAKykUGZxMORO/Zt2QYvVMEq4Wv4KKdYqhbhSgQd2BI8wI6iqmKOd+wRbRq4BcVlI5/4htf+G4aLFJoEBQUKylsP2hz5bMNFk51yBM+omILKI7GEU5ukF8fIRodJaDCtr0ulLD9oX+ED/o6CT9cpMn/SG1wPd5iBJjY0q1BorFcfIRPpRCxJSo5E8BBJGrqbNWUh4+sVmD/DezXh+mdG4kJQaumAG4LJJ8hx8oEn6GFV5ioF074QzeUKJ6aiASPXSvtH5QodbEpbszSkiI1SuBix0Z4HwMSmgmg/ol/ZV2cIyNWekpAxcoxHggv6BOt6pdyw2TckEjdyPhDDo+YQ5lTOD4VZhuXMeMSeNFVkYM6KOYCII/myazpQsgB7pOXF2yiEBQspJHd98DgXMPGVEzCInlTHiRVMTkIqzEkZho5qUTrjMsVWb8YjBhonOGMclgwHK3oco0tRT0Olt4uPgfn3Ro6DTssSkhSmUzGx+6A+jKfpJ0tBcBSgC2bb2je/mWnNzJl9pSD2OT2RbBknjk5Rr3EywhOKjL8GeOnpI9vyV8ob9IZPvH7KvlBPSerEmYUlAEtgXwBIBvvtffFE6nJ/aH7Q7vZi78dn6Lv3IrweDq+/Yi+kMr3j9lXyjo1jlcVfZMSjU9H7Q7/bGX+2YcNUZWfS23+sHd+q4wvx2fou/cb4PD1ZD9Jpf732TC+k0vgv7MT/AEUkAAmdn/xA1s29TEiNVacEAzg5a3SXL8B0W9w0d8bn+nfuH4XF9Sp9J5fBf2YX0pR7kzwEXkatUd/XpsCT63IDediwh41coWxekS2dn6S2IuQN24G3KB8Zm+gV4bF9SgNbEfs5ngn5w9OtyB+qmf0/OL51d0eACaiWxBIJmZgEh+uHuCO6L+jtA0UqplKRUIC5cwHACCSwfCcU2xzLt3QvxebqhvIx/UFyNaEKylqPa3zgXS6PWca1CUFLPH+Y+JI8I9m0drFTzVJRLmBROTFJtxsTazPGM/KvIQiZLUkAFaTiI3kGx7b58hHLJLJJcYmSHBF8JlaPRhxX6Fv4o1yqNRvgogrZU+IZu57Ht/jNg6AnpHYEIZRByIBDjKCCerbMRoxpNaGHMmmael0WdpOChSWU5QsPy3W89/YBcrV2YJamXTMQCfWZNmDzuPEQBoFPOLWf5R2YkBKuLxyWn3Ol81fwaQatzAnFjpyBv6Qdv3Q5er0xLbdOA4t0g37274z4S4DDdExTkIokyLoNTdX1MPWUzsX9YPD4ePbFMatLYq6Sms9sdy3C18opVOiJgTjIsYrplWIMLTbHTSWgdl6tTHLTKcgcJggHpfRKysjHLtbrcO6FLLQMrE7ReEyfLRTCvXYRl6OUB10fbjkCUwoTjLPG+pbSsftf6Y0fp4D/APiagH9qQ5325jjbhGdSSB15catNVNIP1qgIcXNmzt3tzytCSGh33QOlVcnEVKr1ksdsSQ4O0XbCS2ZN8rRYl6RQ7fnRanewksSXYByFZudxb4zyauY7+l0YsQ7Onfs3IAByyyv2yCsmufrdANlQ2MyCQ4bEm53X45QjsdV3/gNmz5KhhOk7DaY01ssNuJ2jFNVPR79IE/8ALq+cH0Vc6/1rRxs/IXFz8L7j3Qw1k7/1mjRcdo/Dj2nnAtrY7ffv8AGXQUjhq4kbTgSFOAymL7xYE8iYS6WhcCZXOOdOsFt7Fy29oOSa6cFJJrdHpDquLlzj6wxZE894eLU2pm2SqsoElnY+6TskDEDe5d/GxHcWmnf5C1rr3+DKp0LQm6awniOhULbyFE2bNvnC/M9E5atUORkKJFhmQRaDXpM8FzW6OS7g9hwvhTkWwhu7u6aycpgaygIJAZJLkE4TYFyLub3zhU48139xvVyff2BmidH0YnS1ellJC0MkylF3IBBIYByT2DjGs09TUnoq+kqVYBNkkkSyG64TmFOHN3GQijTV8wmWRV6PzSS/WcsSBntPZ/hlGkrqicqRNwTqUKeWRjAw9ZlFQvfat2PaC9nRybta9/YwM3R2jjLT9ZUQFTy4lluqjFklhua1n7ImNHo8zEevv9XT+jV7SQUAFuHADjug3TzaoKZdVQYSFuyUtlsliwN8NuXhwzaku9TRYxgDYk4gEY8YSDluIJyzOUSr6FOL69/YzSzSgTFBQVsTVsyg4Usy1MTe4UedxFOZPllOEy0kdJgcqOUqWFIyI94jODemUzlIxpqZATth0TUDaKyUJUSfc3coGTJ8xM8EzkiWokg9PK6MpwFNk4ncLBvygMpF2VVVMt5SehQBhlnrKFpxAWOsH8Dzh8usR0i1CUjEhK1NimMDTsmXiTjY2HAZQ2RMqcMxBmtMAQwNSjE6VEzG29nZd+yOzJ85UoEVHVMwKPpQ2SogysSgdqwV4HKFHHSZ6RLOGVLYrEsuqYUhExGNTetZN+B3cYeuecMsdBLZSZUwg9MVY8Zl7KjMeySbbmiQ1EwT0TDVJEslBH1gsUpThVsA32gb8ojkJnNMlGpSJmFIY1CycSF41l/Z2AcuEccWkzlmbMT6KhpaZ4Q0ua4CCpaASF7TqvEia6pCFzk0qTM6WXcSZjHFKUVEodiQQA8UyJi5SWqk7Kpj+tmlulHqgDhdXVV4Rb6YIqJU5VWjA8pXWnElMtJlrsEe+k9rdkcAPaipnioR0shEtOHZKZakkb8BJyzJw8jFj8rSCVSW9w/9X4QO/J7KaoQTOTM2SLdLe6jieZLSCMhmT3QY/KWkKXLdJLS3t/EY0YVcl7mbxEqi3/B59SaOmzFpCEkk9n+AWgxJ0LUsxll2tdN23Z53y7YgpUIOH1MxQxAEA3VcOM98GpdPLV1qSr3lysk2ckC+/hnGpelmGT4l3/0EydXqkLx9EQBzT455W84iqqNeIhsj+MHpdChyo0lUOLr73ueX+GHeiS8JX6LPU97LBZ7pYO52dzbjwMPF6E5NtgtbdEEhN7XtFGoSsEMPMQaV0EslMyknPidiu7WYWPJV97xAVU5JelnZAdY2LEP1r5gtyz3QXISMde/+nfzlNWgIKfhFWZTK4Q+TKQP1Uzx/GLex+yX4xSOxOW4FqJZAyzgWxLkxoq8yyGEtYI57oHSJCQ+wrLj+MRmrZoxSqNgVoUW1JS/UV4woz0bOIrihmHh4iC6NU6vchJ5haPnAszJfuef4wUNdQMXpV3ILCYW33zzD+ZygOlsMm3v3+R6dUqlQLBDj2cYffluszZwxeqNSM0JB2h1h7IxZjiMoYK+iGVKe84mzvdV93DjuEWPzlQG3oZY+6rCc1bwcmUzQbQPV3/p0al1ZzQhPB1ji25zES9TqsAPLF8ttLvfMd3mN8SCq0ezehK+2fn/nLOGJq6AP9TLEEMVnl7T8vM93Ucm+/wDRfQSqVulpdutM4v7oPu+YiovUmsBGwlyWAC0vv4W3GJ1VlALCjPN5ii43tex57uccmVOjmITRrD8ZquNt/d3+M5QTZSM5Lv8AscjUytIOJMrdYzEuRe44ANnzDRXVqRU5o6M3ZsedncEgW7Yn9I0Zn6Gv/dV8CqIqmr0erKkWCzD1qrNkzk8hfnxDI117/A6k+X/n9kUjVOqCwGl4gym6QPhB6wOTW4vyjdaY0PMFPPC9kYAbFzszUKLNyB3xi5tdo0Ej0WaU8cZfK5Yq++NxpSokei1DSf1RVmbgKQWcF9zx0UqdHNytX3+Tzep0ZJthUpOfshT8PaEWVSZZUqaCshaqgMJScW3Lu5My6QFg9xiFc6VMC1+igzAtCSHmk3St3T0mYwCOz56Uy0BNOlmK1OJjJViWhV+kcWli3IxKkWtjpFNLBSjEslSqZQV0KMA2VBAUOku+O/MHOI1SZSkNimgIlLc9HL2kicScO3s7Sm7AeLRMqqAqLyZeBC8CFAFwJa8KXde4DNoioZ6pk9UtEqSHKgo4PZxXzPIQNBkmy0VoxmY03amTRgwy3ClSto48WWFWXKI0iUAEPNIV6OcTShhF8Gz7XWL55RFpyaqTMVJEuUUhlD1QzUkZ890D1aRmkg4EOGA9UmwGTW3QLDTQYpJUqb6odMMKVofFL2nmFRcYSRtfCJZ8yUmYqYtE0K6SakoxpYFUoAkHo3LhQbsEVdWpyzOdSQAoG4QlJex3AHJ41OtNLgMiakWUrCqwupgynz6oI7hHWMoWAkU8kYZfRzsM5VNtFabEghh6piRjLg5tuihPrKchKDImEICkg9OkEgrUu7SeKjHoa1YKYTAlBIKGxBwCVAYm4h3EU6ykmJn0ykJxJWv1iEykEMA+5Nn393NymgSi1qQ/k7Wg1CSmQZeyWUVJOMAKB6spDl2uSfOCv5REkzUgBX6F7fxqi5q/pFU2agGhmUwBfEpBTiJRMGG6Eud9nilr4v6ykYlD1G7+NcavD/MjB4r5H7GMp0ElCWn3UBsda53E2fhBlElGJsOkAS7A+zhYuFE3s4dzmeUBaRTrA6ScNodUFxfcOMHZk9LYk1NaeOyosBhBJOV7b+HAPczbKixJIwlJTXkBRKVB3YsLv2E8bgQLqETsWFIqmfJli24kdw8OUEk1KGcVFYc2LHJsvhDpNdKwAmfV4zmQD1gHzObEmKXoRrWwRNkTlF1IqDufCo5bn8YOUqZPQFxMxd7wNq6pWLYn1KktvxbtxDNwteKCJ+7pJvnBFcSeXLL2E1u+JsHKbESZgA682IKio/fm+cPdImo2yupKicpnnDqhCkIJZV7b4tU1g+KZ3xX0hOxFKXVnCS0jZWPqkkQSaZRAOE+BhRsKCqlplpScwIUJ5aGeaXQ80IgkiiCqbEE7QWz72Z4prYxf0YqeoGXKIYAkjtsYlFKzVkbq1oCuiPGOJLZxY9HWC2FXhHfQ1lJOEsIXh6D8a5schQItEU1JPKFT00wEshRADm2Q4wRkUC5iVKCeqHLw8fUicmoO70BeEmGpD2i3Kp1EKUBZOcSUaEEPYzNwNh+MLwjOegOUgvCVLUHtlnyi7Sh5hUqwQ6j2jIQ2smNLAPWmHEezdE5JblIybdA5d7NnHp0pbIGV0AGwIIIDhjGS1foUzSnpAAlO1iHWLZW7Y1MywAGQDCOgq1Hck9CvMCQLIQ38Cd3dHKanVMSspwDo0ktgTuu2Voas3SOY+MX9FqCTVJADbQHemEnOtC2KF6sk0FSImS1LmJBs7sx8soraspE5SVgMm5Fsw9ngloOQ9KpPvIUPIjOOaBp+hkBXuo8kj8IhbNNRBldWjGtiGct2O0V0TyeEVtB03SzdrIBz27omWNpW65isZ3oRnClZRrJp6RCuCgPEsfjGvnyBPpsO9JSodo/B4x1cLHkoH4RrNBVDIfc5f7olJ66l0vSqLMuhx05lk32T3hQP3RKqWcUo7glYPaSlvgYsS0Nd9xjoLDsgHWGKedYXjEa/VQFUgdMU+pTbC/tzI1NPNLCML+UGcr0pDH9Un/rmRtho7PLyq4tA6jq0JWFGpUACCTguL3IcZwRTpdNn0jMINv8ATkBmLtbcQPlACgnLxqIUHSMSbAgqBDC+cTnTs9ScKpljZglItwcB4tuZuFLv+jQq0kAEtXrwt1ugPHCNzqs+fDnDZWkEKLnSEw7RZRlZOGuCnmOAPLMCp2sdTb1gyHsIbN8mtFA1ajckXJJtxh+ZNLTv/hozpba/161JJS/qmtfFmDkAN13iqhVO/wDrFv8A/CePygIKlXHyjsupVe8EHD32g1PnoBIFSojccBvFPpgT+nP2IrJM1YVhuEhybWiSlK1EJTcnKG3EpJBBc4M3TH7JgXUVIxj1p+zDqipN0ks1oFgEqhJy5D4oc2HF1N7TC3ZCimJY4woaxeEB44fKmlJcEiI0Kh5jIj0GuRq1afklLOoLKAnGE5NwEPotOIK0JV1cKQCQGcFyTAqjoZU8BKHQtKSTvxHgBF/6NhSkoQtXUBJIsCd0aE5mBwxLTUnqNPygVoC1FwsY24mwbeIDaX00krlqQTYALswtwEXZer0tOLpJhKhLK2A4GBWkOgWypYKQCAUnfxLwk3KuhXGsd1TZbmVSFSpxSpyrCeZbOAAmRo6fQ0uey5KujDhASbuWcmH/AERxrITMGTuBZ+B4GFmpy1KY544WrMwqYb3zziKYsnMxp6fV2WJnRzJisQQVEBNsnDHfEOhtVjPUU4xusLkp3nlaISxyNMcuMu6s0uCUFHOZtfyjqj7/AOaDZOyIIp0QgFQxtgAcNbsEWFaDBtjZyWDPlnFIwaQsssWzKVS/iIt0U4DpAfaKWI5uIKaY1UdKlSlkqSxCSBtdhjmjtBA4StShizDXSQ5Y8DEMsJORpw5oqI+ROIR0W/CkeIglPUTTTEAX6NaR9kw2i0G+3iNy1xu3HygiqUlCE3dwYioyW5Z5Iy0RmNV6YIlrmKyIcdguIoKDkk7y/jFnWrTAppWFIBKywS7WDOS25rd8ZSRrOo/q0D+ZfzhoSS3BkTewWqUboKaCm5pORgIqbMmBKsCUMWLqUHfkXbheCOjZgCoXJvaHxvSmauQ7Z5RypXhSpRyAJ8o7S7Y2QVHJkh/hlBai0HjBM4DCfYBcnkoiwHIE9sBJsEmkUdXVzJ6MZQlKNxUourjhDG3OM9+UbRstKpSgs9IoFLezgRd33EFfe/KPSZqAgBgAAOFgAMoxOvhC5KZoQl5agA4uy7Hsvh8I2Y3ckYMy9Lo88opbrwmahA3qJsBxbf2CJTohlMuqpw4VkskOLMS1rvflEMuoZSjgl7IxEKTYsRYjm8Om6bCk4fR6cWYES7jfYvaLtmaKdXRyqowk/ppa8uqXzDnztFqk0SuZcMAM1EsB3w1OsxxhRp6cjh0bD2sg9uuYPVmmE1iEhHRy1JyRhYEcHeHx6kc3FGgJpCjlISAiaFr3n2e6KEtIA6w8Ys1qFyyypaR/LbujujQZsxKMKbnhu3wz3ArUbsJpkiVSgYhimnEf4RlEur1MwXNcOBhT/EYq6Z0ljmlKUpwp2RbhE2mNJdBLlywEhTY1W3nKHbpfwRSctObBunNELlXUoF7xLR6OlrS8tbLa6FWvyMVqjS657YgGHKHyNHzFkEMlAzUbDx3xGO9midqPC3R1ejpoLYDHYMjTklGwahZKbOBbuhRT09SNz6fhmAQMQ5w5iIt6Ok3hVqbm0ZFB1Z6LyLi4S3R09RLT0iAQCl35RxGl6gWEw8In1e0tgxpXMIBRhSSHAL8IKL0rSKOIsCnF7PWdLP4xVbaMzytSdxv2AcxVSnbJO0Ch+I4ecRVGj56JZxJIQ4J7d0aMafpyGBwm+ElLhJYXaBOltNdJUEpmerIGYsSAz4YWXDW40Hkb+VFCSmeiWJiHCMTgj3o5+eqgOQsh+Ah+hdK9HMGMvLDlsw7WtB5Om6ZSEBQAyxWuCN4hFTWjopK4vWNmbGmai22SU2FrsYLaormy1zTdJYBmYuok/d5xc0ppanUFdEoIVskqw9ZhcQU0TpeWtRmWVtIuRkyRZt++Bw6/MNGdr5KHz6+aQxUcmP4xKnTE7AlNwHz3l84NqloUAoKCU4sSnAJUO7LviUSUqxFJGSiCU5cG3HKHr6iuWnylWTXzAGW+AsAoD/LQXFEpSAHIUllAjNjkf3hmCPhFej0tLUAlwGXdxYkWPZeNJJmIWFBKsKhYEjI/eDCzHg30MgtFTLICySjcoZHt4HkYlq6goQ67JF42VNUoW4UGUl0qSRnz5iMvrzRJ6LGheEBQDHJ1EBx45Rn8vXc0rLS2PH9Y5s2dNWsoUQOAJCU7gWy3+cd1bpSE9IoEE2S/u71Dx8o36dHpRTKnFgDMAc7wAQSf5rd0ZnSVSFmxATxLh/kIHlpajeY3oP0Esyyy1Y0kkF77J4huN41IppYUCJaMx7IP3Ri5c4p7OUavQ1WJkse8mx4tuPh8IpCthJ9Td6LnDCEgW5ZA9kEJRvk0ZjRVRgYKyJtGjY2IvHSQqZFpVynCN5bPdvjPax6PWqmm2D4XAceztfdGiqKQrBYtax84CV9FOcpWxBG5mIMGAs9Ty6boGdMWyAm4e60gWHF459EakPsy7DPpEXuwa73YkPwMJdFMSpJMoKZnSVBixuDfIs0X/wAyrIAGj2GIF+nxB3BICSpi4teNU1qYscmo79/cFzNVaoOShLB3abL3Ak2CuUXJeqlUCNlDOBiExLXLPm+fLdFReq9Qh3kBg98aGYbxtZWixJ1eqxdMg2/fRu/m/e84WOg8nfPv7lqu0FW4UpWAUuweYjMlmd+Yh1Boapp3UUIcpULrS4ZJJsDmw84gm6v1cy6pLsMsabZOGfm/cYp1eiZyCypTEh+ul/jDp62RaVcOnfuOlUM1KsRSksX6yb+cQV9FPnzFLUAH/eTblnFebQTTbo/6h84kGjpgH6P+ofOFbvTkOlXqtX39TqaBaQxA+0PnHK+ZPUAknZTkHDRWmUk1+r5j5xGmjW9x5iFb5IdRV22iE0i+HmIUTmWr3fhCheFFONk+j5oxGIa7OK1NNILx2fNJMdx+kHl1Ow5QaMkTgyVFKkoKlPcEjhHZmqS3SDMSH3b8nsN8DKadNkMtinECAWzBixN01O2VliR1SReHuDWqJVlUvS9CefomRJSgzVKUVpNgGYgtA6llSUqUmYSq2wU8TxhlZXTZoSFHExJFr3uYgrJcy0xaSAWYswtEpNckaIRdVJhv6Ir2mmJs3iQ7RH9E5mFKyoBN8X7rB8oqL0lUoSSp8My9xYsGcR36S1BbbFuQvZr8YF4+aYEs3JokqdBjoULlzAsqKgzMGG+8aPVfVxSEupYwkpUTuFsueYjHz9JTZicBZsTgAZE8GjV6uaWndAA4spQZrMGFx3RycL2GayVuejaK0bLUwfawuAd24EjeYn0hooqR0gmMUg3A3p3NvEZDR+nlFQ2mWmyTliA9gn4GNNO0rOTLTMAxoUNpBDEPmxH3wzfM6pbMrz9FgzE4SEqUApSWsbDaTB6hozgSXF+PB2eMtXaUMxMtaCUzZXVCmZQ4Pk/bneJ9C6zEhlNhDkj3QA5A5OMoD2Ck7NgqlSGUrMWcbxGR1gPpc6XTy8kzAtZ/dTmfG3aRHNYda1ECVISVrXkkWLcT7qecFdWdGrlpMya3SzGKmySkDZSPM9/KJMoiXS+jkrkGUzJAAHJiG+EY2p0OAGIftjb6WUQUJyu5gdUJDkEdkNEDPPKzRLdQgHgcor6InKlzglWwohg/VVyfnGk0vRly3lAGYpKgUrgNUxk9DXU1awSFC4Nt+YYgBoOyK9ZDMQNz5nu3CMVoCqOSiXRkeI3E890aXR2kcSwGLHM24Q26F2DMrcpRud3CIa9HSJZJOIZEfAx0MrLF5RKJCQPaHG4gHHi1Qg+k4Skn1hSUjM+sIwi+ZyinOkTEABYUnMXzcAE2zFlDxjTa608lFZYTcUzCsYCGxEtsk78QftMC1VVCoAq9MN3uqWcwL3LnIDsAi92ZqaBCSprk+MRTFqyc+Jg6udQF8KKocNqWw4DNyO94uU1BRKD4Kvfvl92+OasXj4dWZsTFNmrxMcnz1qupSlHiST8Y0FSdHosqXUnvTk2/azd+XbFVa9HlJKRUhTMAoozbO3Mbzvyjn0CneoGlg84U1Z5+MW+kp+E3xTDVzKYXab4pjuQU3ewPWTxPjD8RAZzE5XIzab/TDOkk7hM8oQe75ERPOFEolS+C/KORwbRVXLKFNFgSyRYRdnSQp3zSfKC+r+jUrxBW5JI7oaOPWiUs3pvmO1XnJU6Z5Bwp2MWQ4wXmoppaQVJQFEEpBybFAToQklo4uVizv2xZaIyPWVluVVykrlLl9GlDnEnC5BL3fhAKoqpizMSpSSkPhBFs/Z4GLoACsLQ4yUhy0Tkmy8GkVNE6QwpUJ+0AlkAh2vdu6DZqqMrSdgABxz5G0B1lKkktlAioU5yhOLhXUr5am72NWupkBaFSDLCRMdQKbm+Y5RoKGnCS6kjaxEn+InJPK0ZfV+lHSS7A3B7xl5tHoc2jDHDZrj/uH+cYawKKQJCpSVoIKOjINiL4txMaLQuk0KldHMKQbAE8eEAJsuWpJDZHFzT73gb9jRVqGAAe4LeGT84DCg3VT0YmISEgLFxcOcxxgbqjTiZLmAgElahiO9PstxMX6DQxXtTHCSBs8e3gOUG6WQkDZAAGTQGFIuaM0bIlkhKA5YrJzVazn7oLmYBiLhmtaK9LJAHM3MM0kpgAN5b7/uiMnbLxVIDSwtUxRmKxMbMLAEuAOwMOZfKFVy9kLG6xiRawCeZJivNqRgwwQkM2SFoIDOYxGmtEqQ6mOcbykkKUOCeO8xcrKJCkYVCzNzgvocjyrQ7iaR+6/mx+IjeaKShCQVqAJ3b/AAEDazQIkq6VG59n9zM35N5RTp9KpmrmKR1dlIe1wLlvCAtNAvU1S69CLAu/j2PuitWlSxlb3R/nnA+nkFwtV+A/GDNjdTvyJA7oOwDz7XpAQZSsRBCVYTvC3QpAPKyoxQMeg/lLpHp0TLbC7ki5x2AHgD3x5wVQeIVxL9GxUHj1DV6ildCSpnaPJZE3CQY0EjTpShnisJpbmXPilLYZrMBjLQCiatqisvFQQjlbLY4VGiWIjc8hF3R/RkKx90UZpuwyhWx47nFqeJ6OTe8QZRPSTWN4S9RmtA9Lo3AhRyXpJgI5FfT1M1T6AoVgKyoZGDWi9MdE5CXcM0KFDY5thy44oH12mipZVhwvuEQy9KE2hQoi8kuIusUOHYL0s0G5ihX19yIUKLTk+EzY4JzKMquYNE1JQTKgno0hhmSQAN/b4CFCiKdujXwpao2Or9B0Kgpa8SkiwAYP2k38oPfnnawkMrgfwhQoo3RNRQO0hXBC0rws5ZXBQNstxgxq/o0n1sxiH2B2WClc4UKBeoaQdn1DZRzRkx1XyHx3QoUdyOrUOCZf/OEC9I16ek6L2ggLy3KUU58dkwoUTjuUlsD6vMAZx2kpQS6rgecKFFHsIgqJoiPFiJO4QoUIORz0AuDkzeMeYaMmCTUTJa7kZduT+DQoUBhRrKGfiIDl7sABuvmYt0sx8RJ2grCwHiMR7RdvnChQwpX1g0OJ8laFlktmPZI2nY57o8arqYypq5amdJZxkd4PeCDChQsthokIMOxQoUBM5oRMJ4UKCINdobihQoVsokJ46BvhQoIDvpXKFChQnGynBE//2Q==",
                 height: 300,
                 width: 350,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

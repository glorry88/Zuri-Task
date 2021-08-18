Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Material(
              color: Colors.transparent,
              child: new InkWell(
                  child: new Text('@ZURI',
                  style: TextStyle(
                    fontSize: 25,
                  ),),
                  onTap: () => launch('https://internship.zuri.team'),
                onHover: (value) {
                  print(value);
                  setState(() {
                    sideLength = value?150 :50;
                  });
                },
              ),
            ),
          ),
        ),
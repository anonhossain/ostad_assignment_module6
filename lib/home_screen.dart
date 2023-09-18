import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Placeholder image URLs, replace with your actual image URLs
  final List<String> image = [
    'https://upload.wikimedia.org/wikipedia/commons/2/2d/Lamb_Biryani.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/The_art_of_%'
        '22BIRYANI%22.jpg/800px-The_art_of_%22BIRYANI%22.jpg?20170928102003',
    'https://media.istockphoto.com/id/1333127675/photo/chicken-biryani-spicy-'
        'indian-malabar-biryani-hyderabadi-biryani-dum-biriyani-pulao-golden.jpg'
        '?s=612x612&w=0&k=20&c=cuof8o-8VkdKw2EuDV6XTOFjqQBobiff5ugsBwD4Erg=',
    'https://upload.wikimedia.org/wikipedia/commons/2/2d/Lamb_Biryani.jpg',
    'https://media.istockphoto.com/id/1487056873/photo/biryani.webp?b=1&s=1'
        '70667a&w=0&k=20&c=aCZRop6qshbzVrzXoaDVbEOHs4ZSMZQEM2EJQy4wl3Q=',
    'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQEBUQE'
        'BAVFhUWFRUVFhUVFxgWFxgVFRcWFxYXFRcYHSkhGBolHxgVIjEiJikrLy4uGCA2OD'
        'MtNygtLisBCgoKDg0OGxAQGy0mICUvLzIwLS0tMCsvMCsvLy0rLTAtLy0tLS0uLS8'
        'tLS0tLy8vLS0tLTAtKy0tLS8tLS0tLf/AABEIALcBEwMBIgACEQEDEQH/xAAbAAABB'
        'QEBAAAAAAAAAAAAAAAAAQMEBQYCB//EAD0QAAIBAwMCBAUBBQgBBAMAAAECEQADIQQS'
        'MQVBEyJRYQYyQnGBkRQjobHwFTNSYnLB0eHxJIKSsgdTov/EABoBAAIDAQEAAAAAAAAA'
        'AAAAAAABAgMEBQb/xAAvEQABAwMBBgUFAQEBAQAAAAABAAIRAyExQQQSUWFx8BOBkaGxIsHR4fEFMhQV/9oADAMBAAIRAxEAPwD1W2KfQVwgp9RUk12orsUgFdikkiuqSloQkpaKKE'
        '0tFFFCEUtJS0kIoqJrep2rIJdwI5yP4ntVM/XL14H9mQRt3KzSEYe1wKRPtiqKm002GCb8Bcq5lB7xOBxNlpSYyaZbVWxy4/n/ACrz283Vr1wglETaSbiEXOI8oyW3Z9BVP1jpOo8Qq1++UG394H3zPK+GoBVvTkZH2rFU/wBEg2b7jv0la2bA05d6dwvVW6nZHLikHU7J+sVgx8MI6veZLis4Qbdw8g9V3DkQoPFQem/B6pJ1TyS0BkuECPQjAB9s1W3/AEnuyAOoI1I+3wmdkpDU+y9PTWWzw4/OKeRweCD9qw+l+FbasP319JPlC3ckRJkEGKg/Et3WaBfFs3GuopAueJBjd8pUhQSo4JJ5IrSNqeBLmjy/Y4XVX/lY4w13r+l6RRXmfSv/AMlDAvoRPfkenBz+hNbfpnXtPqBKOD/t9xyPzV1Pa6T7TB59wqqmyVadyLcla0UCitKzIpDRRQhFFFFCEUUUUISUhpaDQmuTXDCuzSGmkmoorqinKFFtrUhRXKrTgFJCUCuhSCloQilFFJQhLQKSloTS0UVH1urW0u5j9h6/161Fzg0ScJtBcYGU7evKg3MYH9cetZPqnxLcuM1nSLuYCWMwqjiXbt9hmovUL93WiUvBUkgxO6J4ScAEfVTvQ+nW9OpVSYOYI85aT5m3QOIA9hXD2j/Sa9xYxwEcwDfGvHTK6lLZW0xvOu7hoO+OFlNT0LUal/8A1l8gThEBMyDBXhYmPWc8VsOm6MWFEgBFHyHndz5V4ReTXLWru5gswxlY+gqZIYQNpI7jHFQdV1Mq3hW7ZdywmNpYM2ASCRPb+Ncx5uN8dLWmba30Og0M4WwkvEDz6fbUe4VnreohQxUrBjbPcE+bjBwCf+KrtDrbrKXa4TLTtkRAyAJGPTifzWf1Osv3Llq1edsl5kKo8pwsKcTInnirbXF7S21naGJlRmQMe8/9ik59Rz/oOJPuc34qxtBjGwYk98FPHWTc8zEBQWDCeOAqyTC59an2tJauMxKjcVJVhJ7cquCGHtyJqgNy3ZZ28NlYjcwkZBHlaJnHf1gT2qX0zW2r4uBSfEUwT5t64ydpMjg5/nUGucDvuMjWROmLCZmw+bqjwSxuT1/QWgDC0AzuNwBztaSgEkZ+WMfpSahrd0RdSVbbzJUjJG4LjufxUa1auqVXxSUiTMNuz6EYBEinFYm6fFZFQYILBSJyI7en6mtzKr3BrQCJMAHpNzJPnYmMTJWcsAO8DJzIt6WF+7Ko630azduhxZQhAUy+xVncdxCDvJ/81iupdPOmul9MbiqvufKTwB3AOeSa339l3NOzXreosAeYqCsNGTtL7oYe5U/wpnp/xDa1JFlwNzA7uAJU5BzuXP8AOlUe9p3atjc4bBnFwREdMXkn6Vqpu3WzTG8PTmbGfYqu6R8aPYZLWpMhrdu4HA7OJ8yj3nI9sV6DoddbvKGRgQRODOPUHuKz2o6TpL1t1ZEPlBkFZDWhiD2A98eY+tZrSWtR003XAuNaUIVUkfUwDxHcA/mDM1tobS+kGyZB629R7f1ZKlKnWkts75Xp9FVvROsW9VbDowMj/wA47H2qyrsMe17d5uFzHNLDuuyiiiipKKKSlpKEIpCaU1zQhFIaU0hppLmiiihCQCugKKWhCKKKWhCKKQUtCaKKKKEJvUXxbUs3A/U+gHvWN/tfTam8y3NQQ1tgCqAsB3Ck7SCPt3Fc/G3Wmjw7UkltggTkmGc+gGQD96pukdJSy4Fm4hNzcSzCWVwokbs4MrjiAO5zwtv2uTuMAMaHBPPXouzsuyblPxHWJnqBE8D3I0Wq1envO4bTMHAGS3b29Pwaq9a+pFzzu1wAGWCLAIGYgAzPE4NOtqLloohZgXa4y214KpJAntMds596etdTsbVFwlHOdqgmGMzj5gJn/qua5nitMBzZMmSd3ym3q6baK0AsAEAjkL545009Spe0MikEhisjkTInE9x2xTHTOm2rbbYBuAbyzCXkHGzHeD3HI9ar9Dqkts5us+wmVJB3T6knDTj7RV507XWXU3EtOJYzjJ2AebB44znsKv2YU31MgHzmPLXF545MlRqipTaQJj2nT0uvM/ibXtZ1Ba2pLIXA3mSp4MkYHaq4/GOqfwrt2zbKklJO3zCYhTgq0jB/nmrn4t6x+0t5bVlRu4ZA7XBMbXXg8zxI7VT9OOm1mtsaY6fbd2jebJARgoYxsExtMjkEHEHFXU9mpOYY+rpItfTTNlZUqvbG8I00PutJ1Lqdq1aa7d3orIFS88eYGQVCjkjBIzzTNq7YtC3cBLXgVVmTkk5yQcgjt+Yr0DV9N07WAtywjKkEK4B2hVzEzB5E1jOrdAtWiljSo++2LflliIElPEcnaSJMTJEjHpTX2UU2i556cs6Dr6WhFDaQ8xHHvuOS0usC6hLRcZYkKJhe/MZ9B94qsVdOLnhKp2yIUeabgaIhjHMH9KZbrAW0tm8ha6JMIxVjAyFYcsY4Gaj/AAw6XLu63u3wxZ2hYJlUiGbyrAz6kE5Jqp43zvZxNr6DkOOvDhKk0FjSLwJi9lcdcZtHpLW1N07VloIDAesT68ehqj6JcgLvi4lzJDKCRiTA9TER6n3rSde6a+p0/gpKsp3qpaQWDNi4RMg/wLe1ef8ARNZeOpTTbGV1vKYgeXw2DNjv8pOMYrXUpN3p6eUC/lyPEyig4PpOve5+4W46L1O2yqNgtgkmEEJBeAfuYBz29MA3WrtK8LEqdygZGAs8YkmD+Iqt/sg2rh2BdpYsUkjymSZxgzwfcVcXby7Ru8pbCgkbpIMSAfvwahRa8h7agwdeRnOOEa65AK5v1WJv0+eK86Osu9P1JdNO1vT7gpzIJGNyj6PTPP5r1HpnUFv2w6kGQDjuDwRWP+LvFuadkWboYqu1AA43EAHHzKCR/QNUfwV1ZtLfOldpG4hT23Awy/Y/zj1q3ZK4oO3Zkd3sTx/QFlorUfHpzqO+S9Yori24YBhwc11XfXHRQaKKEJKKWkoQkpDS0GmkuaKKKEJaKKKEJaKKKEJKKWkoQlqu63rPCtEgwW8oPp6n8Cf4VYVlevN+03GtK3CQpGRu3Lu+/IH4rPtTyymd3JsFo2amH1BOBcqB03R2L6C+t64l1lYIY8u0QCGTO5ZHtPaKqF0jOQp2rd3NlLRRSTjxBaZmg/KSDAwSeavep6gbNtsKBOwyI2gAEQOB354ioXQCMOz7QyyYEwcSIHuGk/5YrzNeqHO8IbsCL453JMazNsx16YNUP3hPn+E8t4KrNBbwwA0DbEAEjJAAHNVvWNQgbdbg37g8iSQGIGWYjAXBO6BEGpHXde9u/NmGeNqsZSC4H0kefHmJ+3tWataq411HN3bevDcfKLrnwyQm0khQpjIJibY9YMadBoJDj8eRkEnE/rK0NJjeHfsrO3ZfBe0QWAuEvn5QswoPOY4HMYirnoniFAu9XtM8+VIlWUlS8g5Vhg5wy+lVHT7V25sG83AW2XG2rv2KhJcwxBBYKCFE8nPbV37TWkVy9soqbSw9SZyI+UY7zz606TXgucIgDQzab6j4IiAnWqSA2b98s/1cWn09x2CbWM5ZNrTkgbpHqpEDuDUkaVLXmNoLcB3nYoht7MSu6Bkkmsf8KaQaayNQqMl3UMbxGdu12Lou2YUKDgR3NWHxBq71y0yIjvIXg5kQ0gR2A7RV3/oDahYJ3ptaB5+escxErM+k/d3hiOOYUr4g6zdt7lO5HAU5wCpJGPWOZ9jVbb6uXTzOsiBDSJmMHJmZ9qp9LqDqii3HMgmXJJMEzxGSAG9sGa4670208obzHzYYuTJHBJgZzxgDtVMB5JeTwvc/b7adFDZS5z94YjGmnXGFcdW6miG3eW0t0223gJ5WGDkk4YLO6J7VA8yMGjdcdpG0yVEEjAHoPzVAepXLFsaW4FY7iREFiGO4iOcSZNbTp/TQ7JeG3CAGZz5RkEiQcA/erCwNgZ4cDjniemgut7XCDopnSerMz5w2Ig/Qw+ZSfePtin9XcSDqIG8MSThjK+X6c5Ht2FUOpubbqh4D71CH5J3GD5jgYNaTqltNPp7t5j4iIjOATgqoJJP+KRNZqdGq9pa0S3NybHkNeGkyASoVdym4HU/HDp+Fl/iX4m1gu2W0cOLm3fjCgbd0z8o+Ykn5YzHe+fqZ8RgysFwN5jzZjywZMjP2b8VA/bmS1v2oqsycZ7biFz5VCzCxyKzr9T1mrZx4RtgkKFuc+aQBkcYjvVjy6oyLC8k3vJJ6axbiZTFIB2LYHl5fJXoSizbjaZ5+UwTB+UseBMYnNV3Vejae7aBRNlxQ7qyQJODDRAkentio2jF23bQEEsEUMpJ82IMn3gic8d6fuajxNOPK1oecMTJdQR5HkSTEc96Ta2WwBwA+3uftFzUaZaQ4Gef5V38GdW8eyA3zZkejrhh+cH81o6876JeTT31AuhndELKJy9tQC4MYDL2MH79vQwZyK9F/n1vEpQThczbaYbUkYKWikorcsaKKKSmhFBooNCSSiiihCKKKKEJaSiihCKSio+v1Hh2nf/CpI+/b+NIkASUwCTAVD8QdWybSGAMMR3Pp9qy+pdDfRGd18jmUZVMkQctzgzjuBS3r251X1M/71M0aWHu3luXFLbSEtmNwO0g3B3GGiRjJ9q8/Ve6q/eP8ELvtptpM3Qq3UWrSM7XnuFLu0bLhDjyg8ADkyZ+3tU/puosWvPbZQg852wB5c/8AcVB6d0zUu58d1bJ8JTHlVgAu6Jzu/hNVnxHpremRlg+Il4Fzt5DrO1fVZWY5rlspuJDt64IxicgDhb2WneYZZ31UTrXW798OLSPASfKBuUbMndPMCKc0eps6s27zLcCpbe28QDuWWJ//AKjOODmRVdob926tzwre9yUXYseGVDqzFgTuyo2kCee2as7HTr2qvN44Sym7aFtKROzEBSYGR8xj7cVtcWU7OIHG/SZvN/gEXVc7zpGAFqdV8VaazZWEFydg8xPLZwpzgT6cVYdL6sTbcMfOpUMONgZVdBn5sEZzye4NUF5tLprZezb8f5vEgC7dlRHkiDtE8qMGKyZ+ObdvX/tdoFrZs7Llk/PuQOUwfcp7iG9akxtau6BItmAI9IPSbzkArNWdSY3Guue9bDC9E6sDcHiCZQyRHmKsJJH29PYU30/VWiyPuBIiSCDIzg+2Z+4FZ34H+KdNqD+/Jvam7uuXTAS0h7W0FxpZUVY8obJYnmTcde/ZxcIXSq19+2YE/UwBgx6Vmq7Odne3fJnjGmk6SY4jiYFzZQqio3dAMeVuI7wuepaBLmv8WyBBUMYJHmIMswA4IjuJz61A+LdFstTG6PMJ9ZwSY+9aT4c0C2bRZmYufm9sRHH9QKy/xPZvXrjCy4hZtlSCSXwxIgcCRVjg50VHEZmMd93Tosaxzmt9eKwI1W28rvIYvBb0OY4/lXpui1ewyx8pXdPB3jylc+sViul9OGy+t1odbyFZBhnBZYBPYs0SfQ+lbDqXTH3NbQsodQ0sdxBE5kCMlZxMgfepV3NLhBxb4wpUnwdw6379D6KPq9a9y5bTw0Z/ERgCIwGBnBkgex/NW3WtffuW94SClpjc+Xarb2CAgjMEKQJwDWcbXaiy9tWtEAfLd2kqR3DYxPoasurX7zdP1u4k7rXmILCSEJW4Pvtgj/KKlSBnd0PnzB6AjgYEqVeP+gBbv7+sKgv9Q8WylpWVluHezI43hiVHyCSNqhpHeTkVddL6pb0u1bviIzN4YuXSzv5ZIncSSpmRxyBArynQX7guwJJHhEZPI4JzxitteFy74eouM9yyRAyQUY5O4oZ3DIAPoM1LaKAZAJtFotz+O5Qw74wtw2vW7aFy3mDAJwSBjA/FThfCKQybQuA5JPlkkCew4xWC6Zbe/cFtFKWSUmQd77xGFHqT/OttrdPqbYsizImUYuygoMtucTBBiIGcjgSa552cuLicRw8onEwcZwipuWb335FZrqeotJqrV1HaQ0lfDYBidqs24xICgAc/xr1bpd3daX28v6YH8Irz7rl92Vbbae3edh5TbQEDdMM1xSNnBOJrU/C+vHhqrfUEYH3KgZ/Suv8A51RrH7s2iFl26nv0gW9eP2C0lFJRXeXFRRRRQhFIaDRQkiiiihCKKSloQikpaShCKruvCdNdjshP/wAc/wC1TzTN4BgVPBBB+xwaThII4qTDDgV5Xpbu7UJ9z/I1ZdO12mN2+GHh3kYjxANzMpAI8zCLfcR3iqb9naxrltMchmX8QYP2Ig/mru/0tNzPbQsXBZmYYXaSpEnyjIJkxg15vaQ5gsJMY6r0VPcqf9GB2endldWrzkxBXaDB3M0gEcyc1mfiWxeuLuBdDLbCQTvYLK5PyzsAn8d83R6gFQXGNsMQVQA7lN3BChiMjHMdqirpELPqmQs2xbdxixi4mC2+2Rtj0McekYxMcJO8TYn0BgEi2nLnqogEXAH76n8rG6Sw7WhbUZubpyFLgyzF3/8A14JOYIB5rQdOvqQqITcgHcy/KYIRiMyxyYEjg96btmyivuUDZcB/wwLZUKoH+ER6n5ePSi6h8Ut/d6VvCsjskKzEyWafpBnGe34q0MFeQLakjnp9558BCucHTAHqtN1B7V23st3Tba2QYZd3kg4uWjLW8HExwO0ivN/ijpIWzc1AuXLzSCbrHABfZtC4HO0EbRzWo+GGt6nULbVMht5uCSRHIBwWJHPbP66/Tro3ssfCJQOARjc7YaWX0wJz6VooPdRqAmAJ6GOBOtufUXWTaWsA3SZMLB/C3jaKbXgKRc27LltVV2YQy27sidp75ie4mK9E6RpfCRr94/vWyxYExjA9WGe32qv02juXL/jXkC2FzbXduVnIDeJ7mCB7QavLZSQzRJJIPIHcnJqVap4jwdbdOR63EYzylFNm4zdGO7J9tIbjbgxWInGI4/X+VZr4n09myrXbbBbh8zMWkj1bPsDHatMeog2yVJjKglSAe0ieR71iPiix4pNstJxwS0ACRM9pqp7mB0N1yez9xPxOiHnNuSwv9q27bJYV1ugXbT+MZ34i46n23E47Sa9T0eutXLpa0ztZCbHcBfDJ+c+WZ3jcpkTG1gYHHi3WtG1i94bbfLaBAWMbid0+pma9d+EujINNbt7gqkKxZiDuZlaQkmAYYg/cc8VftLWy17Lkz07xKxUg41HFxgNhQeodRYjat2dzbYS6roVmCHXcQJnHBxTrW9R+w6nTOFa5ctPsiZA27QueV7A+pJ71A610i7p9c/hKBa2JEg4OAcn5skfqPvVn05rlwi6rAbPK2SJVswCcTIHrjHeshLqTt0G48/IrpjdqMk49PNeX9DRhqEUypa4qHBVlO4Ag/UDxxBFexdH+ErOmTbaDKwUbXDswKnkMhMED0jvWU+I/hO5du/tWj27i4ZrYME3N2Sp+XcTPpwc5r0O1Yi0q3QDcAEkcT3APfJ571tc7xgHNxry6/b2WV53LTdVF3ShfCZQItsHMDaPLJjaSYj9Ksb/VJhbdr6YcEKrMCT8hX+s0dR0e7T3UnbvtssjBlgRz+axnROtHYLDHc1t2RbkzKqxCtn1is9dpp0nbhg576/pX0AKp+oSr3rPXGsWmtqoDMp8IEZAMKCx4EDcY70/0W5+5t/6F/hIqZqtJbv6f9oY4gnaoQSZkbnb6gAAQWA9uIrrN7CGAsqDA4EkmB7CaDQNJoE9On4Spva+YEceq3PSdT4lvPKnaf9j+lTqzvwrdk3B7Kf8A7Voa7+yvL6TSe4MLi7SwMquA7kSlpKKWtCoRSUUUJJKKKKEIopBS0IRSUVyaEJGNMuadY1Hc0lILOfE3REvMNQvlu2xM/wCJRJ2n35g1T+It1rlm+Geyyodk7SgJILKyQck+prYX6w+s1D29ibXhbhUm2TubbIUMAJ2+Y5kQJNcj/UaWhr2+ePec/PJdbYHyC1386RdXOm6Faa2Em4EQ7RuAIdDEqBIYRAG4wfSrC5pUUzb3p6kMDg+zAjuansAvlMwMTzj1J7nvRdQAD34rnupWsBa579uJS8ZxybKi6voLF23F7PlKlwCrEH6SF9u84j3gVWl+DtBb2XRacj5lDsSXJHlVZj9DPOa0ess7rV1Y+hjExlQWUj3kVX6bXm3ZXxbIco0qqzcKyp7wOCCJyMiosfuO+owCOenG5JtrnAMq4bzm2n+8OCY1OhVGc2ECXwN4EeVg0bkBHMlJEev3rP8ATLVxt6KmwZP7w7QCPpJPfjtWmPUxqA/iacbVJAZTBgAfVjYQTGSJk4qm67aum67WnZFNpNzdi9uJIAPMAZ9sGq6wpn6y6R59eX61Uf8AzeKd19rcbd6rmx1YkXNNccA23XhWIAKyQGAyDKEfmaki6PMpn2BwDwefTINZjSaqxZulJUXHCFln5onZcE84ENHoD3rR376eUowAEz3/ABH3qVajvmW8AB0Wlh8Mbp5+o+6tNR1NRbKmZj0xHaCMVmr+vtYZb2nzO5LjjgEiTEnscd8071TWqtln2BpiCsTknsT/AJSKzdq9Zc/3LBPOSTAV2H0kL80E5z7UgHVZE4MTHDPAokMuFNX4Wsaht8Hy2gFtW79osLgckom4/JHEkCCBitFoL2o06kaQJsMqUdxKRundkjaBkNJ596z3S9Bbs+Er22UXAxW7bhbjm3mWXPzDd6c9q0A6lZsBbT7rttpC/U9uJBDCZHfIkYPpUzO8GgkxjsQfc8CotYACYzm3c+yx6ai5q7+ovXrsLZ8loW2IWZ7qPmUmD+Bj0e0fWF0rPprzBrbbrqkmcqJVSo9SqjH+9Sum6Cy12+iAtbujedxJuALPmQqIgSCBgyRVdrfhzBuO0KTsDECZgxy0AGDGf51fv0ifDIxGBfA4eaiWvFwpvTOstfAtadkUNd3k7SpmSxPHc/1FekaPU7/KZ3KJMjvx2x7z715l8O9Me0VA5mM+gP8AwP416Ali6F3JcVREtuER3Mt6VYGhjoZhUvqeIPqUnWapYCglmYggCOO5icgSP6xVB0voCeKdRqLFtHDyqsxjasQ0CIxOI7c9g1p+rm/cu2S5tXbZCggA+WAwJBHDTPbmng+puKosmLu4WyVEAyQu8jEbQxJjkLj3wVKpNUjWwjrjkZ7haW0y1ituvu6WZtXHWWUmTJwRtEtM8x3mfSs91PVC3dCA/Kij9BUk+K1xEubtqtO5z5nCT529Bg49W+wELo3Q73UdW90grpw8FzjcEwVt+pMHPA/hWnZqdSo4g+mg7yeag5wosBK3vwTpyNP4rc3TuH+gYX9cn81oaatIFAVRAAAAHAAwAKcr0VNgY0NGi4VR5qPLjqloooqagikopKEJKKKShNKKWkFFCSWuDXVcmhC4amXp5qYehTUS7WL+MtO4DtbncQLiwSDvt8iVIORA95NbW7VP1rS+JbMDzL5l+45H5Eis+00/EpkDOi07NU3HgnCe6D1ZdVYVmG26ABctkiVaPY/mKlkMpO0/cRP6d68a1bPpLwt6fcgY+JbaSVYMfPbYASu0xHP8RWv6Z1zWXWC+J5CqhSMb72ws6WiQN/ymOO/pXn3h4iBbTQ96G+hkcd4oRr6rUdZ6nasJ+8aC/lOR5U+pvb0H3rKfGXTbuuFi5pbwsqu8MJA8oZQG55G0xzzxV2dDbWyzakbwYLMfqAaSAozAAOMzuIrLdZ6o7NdVXMAldrhQFgwdpiST6E8Rioh1RpmwPr8jmdLm+iuZSY4RfmZ+PbX5Vh1e2baqlvULuebgTaWW4doCbyo2xnE84Mc1WdL1L+Dbs6pm3lvDBQbW8PagXftxzIJ4yJqdq9WoRU2byCLYiVIIABJPBMjnHaqu40PctIYbwvK8ZJ+ad0fMJ9KhSAfDN23qbTqcDlGCYWiN0EzJ/KzPUenElTdY7xJUAf3SHO0sPmInsft2qbo+sNd04LBrl5CUU71QskGPE3ABypAHYkN7VqLGk0e4LdO6843C5eMQGacKp8mZMmD71ntd8Nj94t1lHiXd6lDIAQQqg9z5mM961N2lpG64HlIj01iL9lZ/Dky3JtnPeO4Tuv6XqnRDZPjLjclvcjkFgdp5wJbPIn0qLqlKKgtWvqGLpXdzwFUABAJPqY9qvNRpSgVVvs0ISgLOVfywCyAwftyZ4pkaQ6gMn7MBdCgi4SWVnhgyEQNpICnaMiDx3rFXgLCZ7n3yrfDa0S4m/BWvS7lrfYQ2xdMMQ4iLc7SQAsgITAzGaY6n0K2byqt8JddWuBE2+GGZpK/dgRBiCQeN1TPh7oF3TW/E1FzYxBLrbA2EgnbEyRA5xkk8d43VPhywxN+GXvugYxBCghVz/pOT2iq9+nTd9TvSZ+2ZSBLjLe/n0UNrTaULdFzwrixm8BsYHb5TiZiO/p7Vc39bd1SkC2lsgK9yAPOpIAKyDtO6Z9hzJxT6/wCHbGpQ3TdLnZDNfZdwmTBYCQMkkjAmu+nvd0t2wjA97QZzv3KyNvyDDIYU4ONsY7AqyJvztccOZ19xlTNOWk2kc/sf3CsLs2QXgQsmTGP+eOPtTN8XdWhl2tKh3bCY3xBlyBIMAwJ5jvxzftHxC/7x4ZQQVG1Ad0sRjy45IkSORWl6fp7Ztq907SfMIELJAKmIk9+fSh1Z5jcjqT/O/RUNptZcrB2yv7TuRD4jnYZwCyYMfYAT9q0tlr1h2FseKd3lPqdgZmEfSpYrP4qd8XLtITTKk3FNxw3lLbiBKjkHBkwewqq33PEFpgQ0AQC20JE+cSJ7mSKjUYA/cIkiLze0EcI0URtRqPDWttr58VP6VauXXAuOWZ22yTws7rm30ECBW+sqAAAAAMADAA9AKznw1phm72+RPsD52/J/l71pLdd/YKPh0pOT2Fztuqh9SBgJ9a7FNrXYrcsK6pKKKEIrk0ppDQhczRSTRTlNdClrgV1SSQa5NdVyaE1w1MvTrU09Ckotyol2plyot0UlILJ9Z6cocNEebehj5X5Zfsw/jntXXT+sMHuBAXAf5AqqyXBm4PMJMycdwwjmavNXYDKQe/8AWKzersndPhq99R5NzuguKCCIKnFwbRkg8RXG27ZnNd4jD+JzfXK62zVg9vhvUvWgvaDWlcIbZTw7gPoDtfJPtJggk+lZLTXIbfa3MrwG1Hzi2xcmWWCN4AXJiDBrTdN6s2tTbt2bGK3kY7XRmiO0MMQD3B9RUDqHRXs3G1FlEAkm6ofyPbPdscwJ+/3M8ymDvGRfl0E+hmMi0rSXw2P73+lVCbdlpu7PNBZsn0fLcHGTVdobOpvllsbCmGVWZt+4g7oaPmKhSVkmAKnpoP21vEdiFRlGwnKhu7AfVjk9hV8nTf3T2iSFGxg1uEZbvkIKHsSJE8kDvUnu8MG/1G+JH5OPLQqQ+syMD+ffCgdJ6Wd/i3D9JDHABiIMdokjn6fSKmdY6lox4QFkOxYIxEm5bA4ZSoMr37Ad8mo+u6jfs3ZVRZMkEXkZlYnO5SkTORx65xmTrOjftd0apEVX2CQVcLPdu0zA5zVRqbri6pk4AB562hTDd4ibDjNlC1ejNtGe2Ga4u4ovZVn6mYhVmPXj0proeuu+Iy3W2OgO22u3auAWyhHmyZOTV9fNi7aSxcIW8tqSwU7dyk2zIOD9Bg5kj1rF7VswfEMkOSynzFiG3yRBiV4n+dWNpi7SZnXvEeebHRBeSZI8vwt9rutaYYa4oJYCDz2+kf8AdVfU7ya0MpuuEUwAoHbIDDmck/ZfesV1PUsqlbNy8bkwyrcZR5Rjai8jHMGpPWusAIuy09tiFXcVPzAcycEx7Tg1MbLBBbk8haOXwszy8D6DEec/Hstpb6bprG1Ltmdyi4XeNnmIAtrGQMrmDMwDTVtLFm5cOma3vg21IRbSWsAsiLEF2I3Emf0E1VfCXVv2q0LesA3lgQzAIXt2oKFoMHzMT2+nHc3PXU2qtsBQofxU8MhyzGSWYRgTkg4MgcVOoxwmTYa9x6xOghSpvDiJ78vt6qAvVrOp17WECz4Ss+AF3AEs7SMAKRn8ZNbjp58tvbbLFlDqxXCyBlieDkwOftVNqtFZuWZ8JVkAM1pe5h1EclSx4EiW7GtD0iyiKWygXy5MLCSJJn7/AIq3Z6bTV3mC5GfkiRF+c+cKivUO5DtDjlprK46z07y+KCm9ch7ibwpgjgEHgnvAms3aS7duC2zzcYeZwANlrvx3PAn1FSes9U8VwwSTJSygM7/88cKDnPoO1WfRen+Cp3Hc7GXb1PoP8o7f91rZTG0VJA+ke5VJeaFO/wD0fZWmltBVCqIAAAHoBxU1KYtipCV1lzV2tOU2K7oUEtFJRQhFIaWuDQhJRSTS01JIDXQNNg12DQhLSGlmkNJC4ammp00y1CEw9RroqW9RbooUlBvCqvX6cOIOCMgjkH1FW14VCvCokAiCptcQZCz197oY7Cq3mAB3f3d9QQSJ4VyJEn1qZqNXNm+L6naFLiQSo2jzbu3oYPvGK71VlWEMJH9ZHoahXSVAFwM6Dh1/vFEEQR9aweP4VyK2w7rt9mF0mbQHjddlRuk9O06k3BtQuSq7Vk5+nnzd59PWrvUteIYW1G+2oUbgNtxdoMOkebvifWKhaK3aUrdG14hfFUE7VYjcNkkpjk/qa0HTr9u6zXLZLIw3biV5ySBDblHGCPfvXI8J73Em0RxvfleP6dFrdUawYt300WXe0gAZbYQeJ5lLM8dsE8CQMegqZ1XXMyKqagWlzuIBZgMcAA/ypzXaDxRdtXW2o5Dr4UyCoE+bvn+sTUPotjRbSzeVoKMzzhhjcJMc5/OKzkt3gZzytfrgHjHXloLwRMY81X/EWv0+kG22S9yILXDzMMBg4GJmOQKwOl1N/wAZlC79iz2CieCe85j19sY2HxZZa4DbYBgt05UAnYqgKNw9ZLf+6s7ptHbGqS9ddiC2yQByybBjHrXV2UU2Uz58T0Fz1WWrvyCFC0l3Vtd3Jf2s4+YSZAJJGJEDn/erpuk34V77tdZjFssWNozyBH92wzMiMc4q26N0k2dgt7XUAney5XncyKZjPYxk96kHQXrFtnZnZApuOEQ7WfncA5mT94P4qL9opOcYzyAnhc59020nWk+60fT/AIU0llATcXxigkqBcgjkqv8AIe3c1K0Olt2bZuXxfdpC5VVYqThiEiAO5JxWb6G5jeXJvLt8TyszG2BuCbB/dkjmBLGIPara8oE3LdzaCxdbpOACeDME47Cq9oqiRusBnqfmx+3zGnTJs5x+FN8JdSfFW4fBVTAUr9MFFDAyHBk7sxPvNQ+s603HFrbKggWtOvL7eGu5wBzHbE1Dt3Teb/0yDnOocYBPJtg/MfcfqKvuk9NSzJEs7fNcbLN/wPYVu2TY3ub9QgHPE/hZ61dlM/TcjHJOdI6bsPiXSGusIJHCj/Cnt79/0AvbS0xZSpiLXZa0NEDC5T3Fx3inUFPLTaCnRUlFKK7rkV1QooooooQkrk10a4amEwuaK5ooTXCmnAajqacBoSToNFcg0s0JoNNtXZptqSEywpm4KksKZcUJhQLoqFeWrO4tQrqUJhVV5ahvVlfSoV5KSsBVbe0wJ3KSjf4lMH8+tKmovD5lDCZNxIt3Jjk9ieB3qSbXeo9y56Yqirs1Or/0Fcyu9mCnV655obUmDwl5Am0kbSVZRBxu7DJ5ri/Y/aHLkgEWzbRrWoJDKPlFy0y7Sck8VDuCcGoNzSW/8AH28v8AKsjv84TLXcleNqgQWqVc6BfJU3C11AI8MMVGB5fOPMRIWfUCix0O6EbxLCM5JhlGwDHYfTmZaSc1XNpwOGcf+9v+aaaz/nf/AObf81V/81+N4K47awmd1aJ21UW962V2qPE33AAzY8yjMEROZB/jUf8AtBVJ/aNd4p7W7aCB/pCgVRrpFPIn/US38zU/S6UDgR9qkz/LaMn0Crdt2oCsR1q60jT2ioaZe6xzPJ8Md/uKcsdON0h9Q5un0bCD7Jx+s13pNPVxpbNbqey06eB63WSptD35PopOkSBEVY2EpixbqwtJWhZ09bWpCCuLa0+goSXaiuxXK10KEiuqWkooUUtJRSE0IXJrljSsaaY01JLNJXE0U0pTKNTgNFFJC7BrsGiihMImuTRRQgrlqacUUUITDiot1KKKApKHet1Bu2qKKSaiXUI71BuJRRQpqM60w4oop'
        'ITLJSCzRRTQn7Omqy02lpaKElaaezVjYs0UUwoKwtW6lW1oopJJ5RTy0UUykE4K6FFFJBRS0UUKKQmuCaKKYQuGNMsaKKFIpvdRRRTTX//Z'

    // Add more image URLs here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:
         Text('Photo Gallery',
             style: TextStyle(
                 fontSize: 23,
                 fontWeight:
                 FontWeight.bold
             )
         )
        ),
        backgroundColor: Colors.blue, // You can customize the AppBar's background color
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text('Welcome to My Photo Gallery!',
                style: TextStyle(
                    fontSize: 23,
                    fontWeight:
                    FontWeight.bold
                ),
              ),
              const SizedBox(height: 30),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter a search term',
                ),
              ),
              const SizedBox(height: 30),
              GridView.builder(
                padding: const EdgeInsets.all(15),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: image.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
                ),
                itemBuilder: (context, index) {
                  int photonum = index+1;
                  return GridTile(
                    footer: Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(2),
                      child: Center(
                        child: Text(
                          'Photo $photonum',
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Center(child: Text('GridView Image $photonum clicked.')),
                            duration: const Duration(seconds: 2),

                          ),
                        );
                      },
                      child: SizedBox(
                        height: 140,
                        child: Image.network(image[index], fit: BoxFit.cover),
                      ),
                    ),
                  );
                },
                scrollDirection: Axis.vertical,
              ),
              ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(image[index]),
                    ),
                    title: Text('Photo ${index + 1}'),
                    subtitle: Text('Description for Photo ${index + 1}'),
                  );
                },
              ),
              const SizedBox(height: 12),
              FloatingActionButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Photos Uploaded Successfully!'),
                    ),
                  );
                },
                child: const Icon(Icons.upload_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

function create_readme() {
	var _string =
@"———  HAPPY PASTURES  ———

Welcome, and thank you for playing my game Happy Pastures!


---BACKGROUND---

Conceived in 2017, Happy Pastures took four and a half years of development to produce. 
Finally available in it's alpha stage, you have the opportunity to be instrumental in the testing and reinforcement of this project.

Happy Pastures takes place in an entirely randomly generated world (location unknown), 
where you have the ability to create an entire civilization to your specifications! 

See your civilization grow with you in real time as you wield the powers of construction, 
creating a living, breathing, bonafide society within the scopes of your game window!


---THE SUPERVISOR---

Happy Pastures comes equipped with the state of the art Supervisor system. 
An advanced artificial intelligence (having informally passed the Turing Test in early 2021), 
you have the opportunity to get in on the ground floor, helping to train the Supervisor through hands-on experience.

Developer's Note: As the Supervisor is in its testing stages, errors may occur. 
If the Supervisor becomes inoperable, please add the variable 'override' to your save file, with a value set to “true”.
This will disable the Supervisor, handing control over to you, the user.


---CONTACT---

Game designed & coded by Myles Hultgren.
Contact me at myleshultgren@gmail.com
For game specific feedback or assistance please use subject line: HAPPY PASTURES (case sensitive)  ";
	
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "README.txt");
	buffer_delete(_buffer);
}
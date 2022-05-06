#include <iostream>
#include<string>
#include<regex>
using namespace std;
int main()
{
    string s,rw;
    cout << "Enter string: ";
    getline(cin, s);
  
    //numbers
    regex obj("([0-9])+|(([0-9])+"".""([0-9])+)");
    bool match = regex_match(s, obj);
    cout << (match ? "Number" : "NOT Number")<<endl;
   
    //reserve words
    regex objrw("CONST|FLOAT|INT|BREAK|CONTINUE|ELSE|FOR|SWITCH|VOID|CASE|ENUM|SIZEOF|TYPEOF|CHAR|DO|IF|RETURN|UNION|WHILE|UOP|DEAN|HOD|and|or");
    bool matchrw = regex_match(s, objrw);
    cout << (matchrw ? "Reserve Word" : "NOT Reserve Word") << endl;

    //ID
    //for letter
    regex obj1("([a-z]([a-z]+""_""|""_""|([a-z]+[0-9]|[0-9])([a-z]|[0-9]|(""_"")+([a-z]|[0-9]))*)*([a-z]+[0-9]|[0-9])([a-z]|[0-9]|((""_"")+([a-z]|[0-9])))*)",regex_constants::icase);
    //for digit
    regex obj2("([0-9]((""_"")|[a-z]|[0-9])*[a-z]+((""_"")*([a-z]|[0-9])+)*)", regex_constants::icase);
    bool matchidl = regex_match(s, obj1);
    bool matchidd = regex_match(s, obj2);
    if (matchidl || matchidd) {
        cout << "Identifier" << endl;
    }
    else {
        cout << "Not Identifier" << endl;
    }
    //op
    regex obj3("<""|"">""|""!=""|""<>""|"":=""|""==""|""/""|""*""|""-""|""+""|""++""|""+=""|""--""|""-=""|""&&""|""||""|""&|""|""|&");
    bool matchop = regex_match(s, obj3);
    if (matchop) {
        cout << "Operator" << endl;
    }
    else {
        cout << "Not Operator" << endl;
    }
    //User
    regex obj4("<<<");
    regex obj5(">>>");
    bool matchusi = regex_match(s, obj4);
    bool matchuso = regex_match(s, obj5);
    if (matchusi) {
        cout << "UserOutput and Operator" << endl;
    }
    if(matchuso)
    {
        cout << "UserInput and Operator" << endl;
    }
    //Punctuations
    regex obj6("[""|""]""|""{""|""}""|""(""|"")""|""\"""|""\"");
    bool matchpunc = regex_match(s, obj6);
    if (matchpunc)
    {
        cout << "Punctuation" << endl;
    }
    //comment
    regex objslc ("/""/""([a-z]|[0-9]|"" "")+", regex_constants::icase);
    bool matchslc = regex_match(s, objslc);
    if (matchslc)
    {
        cout << "Single Line Comment" << endl;
    }
    regex objmlc("/""*""([a-z]|[0-9]|"" "")+""*""/", regex_constants::icase);
    bool matchmlc = regex_match(s, objmlc);
    if (matchmlc)
    {
        cout << "Multi Line Comment" << endl;
    }
    
    
}

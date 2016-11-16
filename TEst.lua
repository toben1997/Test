--
-- Created by IntelliJ IDEA.
-- User: Toben
-- Date: 16.11.2016
-- Time: 18:38 Uhr
-- To change this template use File | Settings | File Templates.

local password

function clearTerm()
    term.clear()
    term.setCursorPos(1,1)
end

function printWelcome()
    clearTerm()
    print("Bitte gebe das Passwort ein!")
end

function passwordAbfrage()
    password = read()
    if password == "test123" then
        clearTerm()
        print("Richtig")
        sleep(2)
        rs.setOutput("right", true)
        sleep(10)
        rs.setOutput("right", false)
    else
        clearTerm()
        print("Falsches Passwort!")
        sleep(3)
    end


end

printWelcome()
passwordAbfrage()
os.reboot()

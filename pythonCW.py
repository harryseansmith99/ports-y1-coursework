from graphics import *


def userDimension():

    # specifying the choice of dimension that the user makes
    dimensionChoice = int(input("Please enter your choice of dimensions for the graphics window; 5, 7, or 9: "))

    windowSize = [5, 7, 9]

    while dimensionChoice not in windowSize:
        dimensionChoice = int(input("Sorry, you must choose dimensions, 5, 7, or 9 as numbers: "))

    return dimensionChoice

def userColour():

    colour = ["r", "g", "b", "m", "o", "c"]
    colourChoice = []
    coloursChosen = []
    sum = 0

    # sum is set to 0, this counts the amount of inputs the user picks, each input (inputColour variable) is put into colourChoice (list), the choices are in colour (list)
    while sum < 3:
        inputColour = input("Pick 3 colours from the list using the first letter of the colour:\nred, green, blue, "
                            "magenta, orange, cyan: ").lower()
        if inputColour in colour:
            colourChoice.append(inputColour)
            print(colourChoice)
            sum += 1
        else:
            print("Incorrect choice, please choose from the options given: ")

    # changes colourChoice inputs to the full colour name, adds them to coloursChosen (list), allows colour choices to be used as colours for shape fill later in program
    for i in colourChoice:
        if i == "r":
            coloursChosen.append("red")
        elif i == "g":
            coloursChosen.append("green")
        elif i == "b":
            coloursChosen.append("blue")
        elif i == "m":
            coloursChosen.append("magenta")
        elif i == "o":
            coloursChosen.append("orange")
        else:
            coloursChosen.append("cyan")

    return coloursChosen

def circle(win, centre, radius, colour):

    circle = Circle(centre, radius)
    circle.setFill(colour)
    circle.setOutline("")
    circle.draw(win)

def triangle(win, point1, point2, point3, colour):

    triangle = Polygon(point1, point2, point3)
    triangle.setFill(colour)
    triangle.setOutline("")
    triangle.draw(win)

def patchPColumn1(win, x, y, colour):

    drawTriangles = True
    # if drawTriangles is true, the program knows to draw the triangles in the space provided, if false it draws a
    # circle drawTriangles is set to the opposite boolean value at the end of each statement, so the program knows

    # i controls the point of y for the triangles and circle
    for i in range(5):
        if drawTriangles == True:
            triangle(win, Point(x,y+i*20), Point(x+20,y+i*20), Point(x+10,y+i*20+10), colour)
            triangle(win, Point(x, y+i*20+10), Point(x+20,y+i*20+10), Point(x+10,y+i*20+20), colour)
            drawTriangles = False
        elif drawTriangles == False:
            circle(win, Point(x+10,y+i*20+10), 10, colour)
            drawTriangles = True

def patchPColumn2(win, x, y, colour):

    # same method as patchPColumn1
    drawTriangles = False

    for i in range(5):
        if drawTriangles == True:
            triangle(win, Point(x, y+i*20), Point(x, y+i*20+20), Point(x+10, y+i*20+10), colour)
            triangle(win, Point(x+10, y+i*20), Point(x+10, y+i*20+20), Point(x+20, y+i*20+10), colour)
            drawTriangles = False
        elif drawTriangles == False:
            circle(win, Point(x+10,y+i*20+10), 10, colour)
            drawTriangles = True

def patchP(win, x, y, colour):

    # draws the columns from patchPColumn1 and 2 in the correct order, this depends on their x coordinate values
    patchPColumn1(win, x, y, colour)
    patchPColumn1(win, x+40, y, colour)
    patchPColumn1(win, x+80, y, colour)
    patchPColumn2(win, x+20, y, colour)
    patchPColumn2(win, x+60, y, colour)

def patchF(win, x, y, colour):

    # x and y coordinates are increased by 50 so that the circles can be drawn from their centre points
    pointX = x+50
    pointY = y+50
    radius = 50

    # creates 10 circles, pointY increases by 5 each time to move onto the next circle, radius decreases by 5 to make next circle smaller
    for i in range(10):
        centre = Point(pointX, pointY)
        circle = Circle(centre,radius)
        circle.setOutline(colour)
        circle.draw(win)
        pointY += 5
        radius -= 5

def main():

    # receives the user's chosen dimension and colours from userDimension() and userColour()
    dimensionChoice = userDimension()
    coloursChosen = userColour()
    size = dimensionChoice*100
    win = GraphWin("up2076569", size, size)
    midX = size/2

    for x in range(0, size, 100):
        for y in range(0, size, 100):
            if x == y or x+y == size-100 or x+y < size-100 and y-x < 0 or x+y > size-100 and y-x > 0:
                patchF(win, x, y, coloursChosen[0])  # coloursChosen[n] is the position in the list that represents the colour choices, so 0 is the first selection
            elif x < midX:
                patchP(win, x, y, coloursChosen[1])
            else:
                patchP(win, x, y, coloursChosen[2])



main()
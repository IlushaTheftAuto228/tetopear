import tkinter as tk
from PIL import ImageTk, Image
from pygame import mixer

mixer.init()
mixer.music.load("tetopear.mp3")

mixer.music.play(-1)

tetopear = tk.Tk()
tetopear.title("Тето груша")
tetopear.geometry("720x743")
tetopear.resizable(False,False)

tetopear1 = Image.open("tetopear.jpg")
width = 720
ratio = (width / float(tetopear1.size[0]))
height = int((float(tetopear1.size[1]) * float(ratio)))
tetopear1 = tetopear1.resize((width, height))
tetopear1 = ImageTk.PhotoImage(file="tetopear.jpg")

canvas = tk.Canvas(tetopear, width=width, height=height)
canvas.pack(side="top", fill="both", expand="no")

canvas.create_image(0, 0, anchor="nw", image=tetopear1)

tetopear.mainloop()
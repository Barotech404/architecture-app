import tkinter as tk
from tkinter import ttk

class ArchDesignApp:
    def __init__(self):
        self.root = tk.Tk()
        self.root.title("نرم‌افزار طراحی معماری")
        self.setup_ui()
        
    def setup_ui(self):
        ttk.Label(self.root, text="سلام! این برنامه شماست").pack(pady=20)
        ttk.Button(self.root, text="خروج", command=self.root.quit).pack()
        
    def run(self):
        self.root.mainloop()

if __name__ == "__main__":
    app = ArchDesignApp()
    app.run()

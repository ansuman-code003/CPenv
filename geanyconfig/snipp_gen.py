import tkinter as tk

def process_content():
    input_text = input_text_widget.get("1.0", tk.END)  # Get content from the input text widget

    # Process the content (replace newline characters)
    processed_content = input_text.replace('\n', '%newline%')

    output_text_widget.delete("1.0", tk.END)  # Clear the output text widget
    output_text_widget.insert(tk.END, processed_content)  # Display processed content

# Create the main window
root = tk.Tk()
root.title("Text Processing Tool")

# Create input text widget
input_text_widget = tk.Text(root, wrap="word", width=40, height=10)
input_text_widget.pack(pady=10)

# Create process button
process_button = tk.Button(root, text="Process Content", command=process_content)
process_button.pack(pady=5)

# Create output text widget
output_text_widget = tk.Text(root, wrap="word", width=40, height=10)
output_text_widget.pack(pady=10)

# Run the Tkinter event loop
root.mainloop()


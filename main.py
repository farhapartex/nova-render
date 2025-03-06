import ffmpeg

def compress_video(input_file, output_file):
    input_node = ffmpeg.input(input_file)
    input_node.output(output_file, vcodec='libx265', crf=28).run()


if __name__ == "__main__":
    compress_video("Trailer.mpg", "trailer-short.mp4")
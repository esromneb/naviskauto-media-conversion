import sys
import math

def generate_chapters(duration_str):
    # Convert duration string to float and then to milliseconds
    duration_ms = int(float(duration_str) * 1000)
    
    chapters = []
    
    # First chapter at 5 seconds
    chapters.append({
        "title": "00:05",
        "startTime": 5 * 1000
    })
    
    # Second chapter at 30 seconds
    chapters.append({
        "title": "00:30",
        "startTime": 30 * 1000
    })
    
    # Generate chapters every 10 minutes (10 * 60 * 1000 ms)
    interval = 10 * 60 * 1000  # 10 minutes in milliseconds
    current_time = interval
    
    while current_time < duration_ms:
        minutes = current_time // (60 * 1000)
        chapters.append({
            "title": f"{minutes:02d}:00",
            "startTime": current_time
        })
        current_time += interval
    
    text = ""
    
    for i in range(len(chapters)):
        chap = chapters[i]
        title = chap['title']
        start = chap['startTime']
        # If it's the last chapter, use duration as end time
        if i == len(chapters) - 1:
            end = duration_ms
        else:
            end = chapters[i+1]['startTime'] - 1
            
        text += f"""
[CHAPTER]
TIMEBASE=1/1000
START={start}
END={end}
title={title}
"""

    with open("FFMETADATAFILE", "a") as myfile:
        myfile.write(text)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python3 genchapters.py <duration_in_seconds>")
        sys.exit(1)
        
    generate_chapters(sys.argv[1])

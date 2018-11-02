import rect


def main():
    print('START')
    # print(dir(rect))
    rec = rect.PyRectangle(1, 2, 3, 4)
    try:
        rec_area = rec.get_area()
        print(rec_area)
    finally:
        del rec

if __name__ == '__main__':
    main()

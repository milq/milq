class Point(object):

    def __init__(self, x, y):
        self._x = x
        self._y = y

    def get_x(self):
        return self._x

    def set_x(self, x):
        self._x = x

    def get_y(self):
        return self._y

    def set_y(self, y):
        self._y = y


def euclidean_distance(a, b):

    ax = a.get_x()
    ay = a.get_y()
    bx = b.get_x()
    by = b.get_y()

    dist = ((ax - bx) ** 2 + (ay - by) ** 2) ** 0.5

    return dist

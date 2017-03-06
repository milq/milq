'use strict'

exports.Point = class {
    constructor(x, y)
    {
        this._x = x
        this._y = y
    }

    get x()
    {
        return this._x
    }

    set x(x)
    {
        this._x = x
    }

    get y()
    {
        return this._y
    }

    set y(y)
    {
        this._y = y
    }
}

exports.euclidean_distance = function(a, b) {
    var ax = a.x
    var ay = a.y
    var bx = b.x
    var by = b.y

    var dist = ((ax - bx) ** 2 + (ay - by) ** 2) ** 0.5

    return dist
}

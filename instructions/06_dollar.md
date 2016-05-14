
# 6. Operator $

> f $ a = f a

    :i ($)

Priorytet 0 oznacza, że operator ten ma najniższy priorytet, czyli jest wykonywany na samym końcu, gdy obecne są jeszcze inne operatory.

Tzn., że `$` wywołuje wszystko po prawej stronie i do tak otrzymanej wartości stosuje funkcję po lewej stronie.

Przeanalizujmy ten przykład:

    (2^) $ (*30) $ 2 + 2


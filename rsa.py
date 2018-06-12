def phi(p, q):
  return (p-1)*(q-1)

def mmi(a, n):
  t = 0
  new_t = 1
  r = n
  new_r = a
  while new_r != 0:
    quotient = r / new_r
    (t, new_t) = (new_t, t - quotient * new_t) 
    (r, new_r) = (new_r, r - quotient * new_r)
  if t < 0:
    t += n
  return t

class RSA(object):

  def __init__(self, p, q, e):
    self.n = p*q
    self.totient = phi(p,q)
    self.e = e
    self.d = mmi(e, self.totient)

  def encrypt(self, m):
    c = (m**self.e) % self.n
    return c

  def decrypt(self, c):
    d = self.d
    n = self.n
    if c < 1 or d < 0 or n < 1:
      return
    m = 1
    while d > 0:
      if d % 2 == 1:
        m = (m * c) % n
      c = (c * c) % n
      d /= 2
    return m

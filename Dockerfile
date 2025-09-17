FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n: int) -> bool:\n\
  x = set()\n\
  while n != 1: #rep until happy or loop forever\n\
    if n in x:\n\
      return False\n\
    x.add(n)\n\
    n = sum(int(y) ** 2 for y in str(n))\n\
  return True #exit because happy\n\
\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
"]
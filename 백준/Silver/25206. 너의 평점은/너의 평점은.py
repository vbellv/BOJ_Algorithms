scores = {
    'A+': 4.5,
    'A0': 4.0,
    'B+': 3.5,
    'B0': 3.0,
    'C+': 2.5,
    'C0': 2.0,
    'D+': 1.5,
    'D0': 1.0,
    'F': 0.0,
}

total_num = 0
total_score = 0

for _ in range(20):
    _, num, score = map(str, input().split())
    if score != 'P':
        total_num += float(num)
        total_score += float(num)*scores[score]

print(total_score/total_num)
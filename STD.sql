OW

DS



from collections import deque

# Define the graph as an adjacency list
graph = {
    0: [1, 2],
    1: [0, 3, 4],
    2: [0, 5],
    3: [1],
    4: [],
    5: [2]
}

# BFS Implementation
def bfs(start, visited):
    queue = deque([start])
    visited.add(start)

    while queue:
        node = queue.popleft()
        print(node, end=" ")

        for nei in graph[node]:
            if nei not in visited:
                visited.add(nei)
                queue.append(nei)

# DFS Implementation
def dfs(start, visited):
    print(start, end=" ")
    visited.add(start)

    for nei in graph[start]:
        if nei not in visited:
            dfs(nei, visited)

# Main code
print("BFS traversal of graph:")
visited = set()
for node in graph:
    if node not in visited:
        bfs(node, visited)

print("\nDFS traversal of graph:")
visited = set()
for node in graph:
    if node not in visited:
        dfs(node, visited)





##########################################
The Fibonacci sequence is the series of numbers 0, 1, 1, 2, 3, 5 8. Write a program that generates the Fibonacci sequence using C.

#include <stdio.h>
#include <conio.h>

int main() {
    int i, n, t1 = 0, t2 = 1, next;

    printf("Enter the number of terms: ");
    scanf("%d", &n);

    printf("Fibonacci Series: ");

    for (i = 1; i <= n; ++i) {
        printf("%d ", t1);
        next = t1 + t2;
        t1 = t2;
        t2 = next;
    }

    getch();
    return 0;
}
################################

AIM Write a C program that outputs prime numbers. This program should work as follows: The user will run the program and will enter a number on the command line. The program will then create a separate thread that outputs all the prime numbers less than or equal to the number entered by the user



#include <stdio.h>
#include <conio.h>
#include <math.h>

int main() {
    int n, i, j, isPrime;

    printf("Enter a number: ");
    scanf("%d", &n);

    printf("Prime numbers up to %d are: ", n);

    for (i = 2; i <= n; i++) {
        isPrime = 1;
        for (j = 2; j <= sqrt(i); j++) {
            if (i % j == 0) {
                isPrime = 0;
                break;
            }
        }
        if (isPrime)
            printf("%d ", i);
    }

    getch();
    return 0;
}
############################################
AIM: Write a C program that implements the FIFO page-replacement algorithm

#include <stdio.h>

int main() {
    int n, i;
    float avg_wait = 0, avg_turnaround = 0;

    printf("Enter the number of processes: ");
    scanf("%d", &n);

    int burst_time[n], waiting_time[n], turnaround_time[n];

    // Input burst times
    printf("Enter the burst time for each process:\n");
    for (i = 0; i < n; i++) {
        printf("P%d: ", i + 1);
        scanf("%d", &burst_time[i]);
    }

    // Waiting time for first process is 0
    waiting_time[0] = 0;

    // Calculate waiting time for each process
    for (i = 1; i < n; i++) {
        waiting_time[i] = waiting_time[i - 1] + burst_time[i - 1];
    }

    // Calculate turnaround time
    for (i = 0; i < n; i++) {
        turnaround_time[i] = burst_time[i] + waiting_time[i];
    }

    // Display results
    printf("\nProcess\tBurst Time\tWaiting Time\tTurnaround Time\n");
    for (i = 0; i < n; i++) {
        printf("P%d\t%d\t\t%d\t\t%d\n", i + 1, burst_time[i], waiting_time[i], turnaround_time[i]);
        avg_wait += waiting_time[i];
        avg_turnaround += turnaround_time[i];
    }

    printf("\nAverage Waiting Time: %.2f", avg_wait / n);
    printf("\nAverage Turnaround Time: %.2f\n", avg_turnaround / n);

    return 0;
}

#################################################
Practical No. 5: Design File System in 

AIM: Create a text file name as a test.txt


#include <stdio.h>
#include <conio.h>

int main() {
    FILE *fp;  // File pointer

    // Create (or overwrite) a text file named "test.txt"
    fp = fopen("test.txt", "w");

    // Check if file creation was successful
    if (fp == NULL) {
        printf("Error! Unable to create file.\n");
        return 1;
    }

    // Write some text into the file
    fprintf(fp, "This is a sample text written to test.txt file.\n");
    fprintf(fp, "File created successfully using a C program.\n");

    // Close the file
    fclose(fp);

    printf("File 'test.txt' created and data written successfully.\n");

    getch(); // Wait for key press before closing (Turbo C compatible)
    return 0;
}



###############################################
AIM: Store the information in a file created with a given name.

#include <stdio.h>
#include <conio.h>

struct Person {
    char name[50];
    int age;
    char address[100];
};

int main() {
    struct Person p;
    FILE *fp;

    // Open file in write mode (create if not exists)
    fp = fopen("test.txt", "w");

    if (fp == NULL) {
        printf("Error opening file!\n");
        return 1;
    }

    // Get input from user
    printf("Enter your name: ");
    fgets(p.name, sizeof(p.name), stdin);

    printf("Enter your age: ");
    scanf("%d", &p.age);
    getchar(); // consume newline character left by scanf

    printf("Enter your address: ");
    fgets(p.address, sizeof(p.address), stdin);

    // Write data to file
    fprintf(fp, "Name: %s", p.name);
    fprintf(fp, "Age: %d\n", p.age);
    fprintf(fp, "Address: %s", p.address);

    fclose(fp);

    printf("\nInformation stored successfully in 'test.txt'\n");

    getch();
    return 0;
}






################


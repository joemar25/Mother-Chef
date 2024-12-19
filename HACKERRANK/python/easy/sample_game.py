import random
import time


def play_number_game():
    print("\n=== Welcome to the Number Guessing Game! ===")
    print("I'm thinking of a number between 1 and 100...")

    # Initialize game variables
    secret_number = random.randint(1, 100)
    attempts = 0
    max_attempts = 10
    score = 1000

    while attempts < max_attempts:
        try:
            # Get player's guess
            guess = int(input("\nEnter your guess (1-100): "))
            attempts += 1

            # Validate input
            if guess < 1 or guess > 100:
                print("Please enter a number between 1 and 100!")
                attempts -= 1
                continue

            # Check guess
            if guess == secret_number:
                print(f"\n🎉 Congratulations! You've found the number in {
                      attempts} attempts!")
                print(f"Your score: {score} points")
                break
            elif guess < secret_number:
                print("Too low! Try a higher number.")
            else:
                print("Too high! Try a lower number.")

            # Calculate difference and reduce score
            difference = abs(secret_number - guess)
            score -= (difference + 50)  # Penalty for each attempt

            # Give additional hints
            if attempts == max_attempts - 2:
                print(f"\n⚠️ Warning: Only {
                      max_attempts - attempts} attempts remaining!")

        except ValueError:
            print("Please enter a valid number!")
            attempts -= 1
            continue

    else:  # If player runs out of attempts
        print(f"\n😔 Game Over! The number was {secret_number}")
        print("Better luck next time!")


def main():
    while True:
        play_number_game()

        # Ask to play again
        play_again = input(
            "\nWould you like to play again? (yes/no): ").lower()
        if play_again != 'yes':
            print("\nThanks for playing! Goodbye! 👋")
            break


if __name__ == "__main__":
    main()

import csv
import sys
import time


def main_menu():
    while True:
        print("\nEnter 1-4 to choose what you want to do:")
        print("1: Search leaders based on bonuses to specific yields")
        print("2: Search for all leaders of a Civilization")
        print("3: Add or Edit a leader for the Database")
        print("4: Search for all leaders with a unique unit from the class of your choosing")
        print("5: Exit")

        choice = input("Enter your choice: ")

        if choice == "1":
            search_leader_by_bonus()
        elif choice == "2":
            search_leader_by_civilization()
        elif choice == "3":
            add_or_edit_leader()
        elif choice == "4":
            search_leader_by_unit_class()
        elif choice == "5":
            print("Exiting program.")
            break
        else:
            print("Invalid choice. Please enter a number between 1 and 5.")


def search_leader_by_bonus():
    yield_type = input("Enter the yield type (Science, Culture, etc.) or Custom: ")
    print(f"Searching for leaders with a bonus to {yield_type}...\n")
    # Add logic to search


def search_leader_by_civilization():
    civilization = input("Enter the civilization (Japan, England, etc.): ")
    
    #print(f"Searching for leaders from {civilization}...\n")
    # Add logic to search


# limits: add a leader to a civ that exists or add a new civ at the same time
def add_or_edit_leader():
    action = input("Type ADD to add a new leader or EDIT to edit an existing one: ").strip().upper()
    if action == "ADD":
        leader_name = input("Enter Leader Name: ")
        civilization = input("Enter Civilization(s): ")
        leader_bonus = input("Enter Leader Bonus: ")
        print(f"Adding leader: {leader_name}, Civilization: {civilization}, Bonus: {leader_bonus}\n")
        # Add logic to update
    elif action == "EDIT":
        leader_name = input("Enter the leader you want to edit: ")
        print(f"Editing leader: {leader_name}\n")
        # Add logic to edit
    else:
        print("Invalid action. Please enter ADD or EDIT.")


def search_leader_by_unit_class():
    unit_class = input("Enter the class (Ranged, Siege, Melee, etc.), or press 1 to go back: ")
    if unit_class == "1":
        return
    print(f"Searching for leaders with a unique unit in class {unit_class}...")
    # Add logic to search


if __name__ == "__main__":
    main_menu()

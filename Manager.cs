using System.Diagnostics;

// Inside your class
public void LockSystem() {
    Console.WriteLine("Locking ldslockOS...");
    Process.Start("bash", "/usr/local/bin/lock_screen.sh");
}

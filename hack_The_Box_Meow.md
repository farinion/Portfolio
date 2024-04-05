# Hack The Box: Meow

## Summary

After connecting to the Hack the Box vpn, you will spawn and remotely log in to a machine.  The first five questions are knowledge based, the last three are technical based.

## Tasks

<details>
    <summary>
        <b>Task 1: What does the acronym VM stand for?</b>
    </summary>
    Virtual Machine
</details>


<details>
    <summary>
        <b>Task 2: What tool do we use to interact with the operating system in order to issue commands via the command line, such as the one to 
        start our vpn connection?  It's also known as a console or shell.</b>
    </summary>
    Terminal
</details>


<details>
    <summary>
        <b>Task 3: What service do we use to form our VPN connection into HTB labs?</b>
    </summary>
    Openssh
</details>


<details>
    <summary>
        <b>Task 4: What tool do we use to test our connection to the target with an ICMP echo request?</b>
    </summary>
    ping
</details>


<details>
    <summary>
        <b>Task 5: What is the name of the most common tool for finding open ports on a target?</b>
    </summary>
    nmap
</details>


<details>
    <summary>
        <b>Task 6: What service do we identify on port 23/tcp during our scans?</b>
    </summary>
    Use nmap to do a port scan of the IP address that was provided when you spawned the machine. The scan will list the only open port.
    <details>
        <summary>
            <i>Commands</i>
        </summary>
        <pre>
            nmap {target IP}
        </pre>
    </details>
    <details>
        <summary>
            <i>Answer</i>
        </summary>
        Telnet
    </details>
</details>


<details>
    <summary>
        <b>Task 7: What username is able to log into the target over telnet with a blank password?</b>
    </summary>
    This can be solved by brute force. You can enter common default usernames at the terminal until you find one that works. Common usernames are things like admin, administrator, and root.
    <details>
        <summary>
            <i>Commands</i>
        </summary>
        <pre>
            telnet {target IP}
            Username: {user}
            Password: {passwd}
        </pre>
    </details>
    <details>
        <summary>
            <i>Answer</i>
        </summary>
        Root
    </details>
</details>


<details>
    <summary>
        <b>Submit the flag</b>
    </summary>
        After successfuly logging into the target machine, you can use the <i>ls</i> command to list the files in the home directory. The flag is hidden in a file in the home directory. After finding the name of the file you need you can use the <i>cat</i> command to display its text.
    <details>
        <summary>
            <i>Commands</i>
        </summary>
        <pre>
            ls
            cat {target file}
        </pre>
    </details>
</details>

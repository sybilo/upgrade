{
  "apkUrl": "https://github.com/sybilo/upgrade/releases/tag/test-nMobile-v1.0.0.2153/nMobile-v1.0.0.2153-arm64-v8a-release-ibo-auto.apk",
  "version": "201002153",
  "gatedLaunch": 0.8,
  "notes": "* ### Warning: Message Database will be Deleted!

* The main feature is test the problem of can't receive message: add log in go-sdk and auto send messages in a loop;

1. Optimize the upload logic of private group permission control: delay trigger to achieve batch processing;
2. Adjust the font size of copywriting and private group invitations;
3. Optimize the database operation after reading;
4. Added native sdk crash reporting;
5. Attempt to solve the bug of writing files during Firebase Crash recording, failed;
6. Adjust the width and margin of the chat page bubble to improve the effective screen occupation ratio;
7. Adjust the scrolling strategy of the chat interface to solve the problem of automatically scrolling to the bottom when the big picture returns, (the keyboard does not pop up, it will not scroll to the bottom);
8. Reconstruct the @Name of the group chat (the prefix sent out is @chat Id, and the set name can be displayed when displayed);
9. Add wallet.verifyPassword () when the password input box is verified;
10. In the settings, "contact us" jumps to the email interface;
11. Added the function of sending messages automatically and cyclically for testing;
12. Add a forced crash button in the debug option;
13. Fix bug: when the black / white list has only one Id, the generated json is not an array problem;
14. Fix bug: the non-group owner did not delete the group in the blacklist;
15. Optimize the refresh logic when receiving messages (only take new messages);
16. Complete protocol `event:subscribe/unsubscribe/add-permission/remove-permission;
17. Fix bug: the problem of sometimes displaying and disappearing when sending pictures;
18. Fix bug: solve the problem of @ confused when complex markdown and @ mixing;
19. Removed the close button of the new group chat menu;
20. Change the id of subscribed private group without invitation to join blacklist (previously whitelist);
21. If someone been moved to blacklist in a private group, text input is disabled and "You have been kicked out of the channel" is displayed anywhere;
22. The members of a channel will put myself first (you);
23. Refactor the permission control of private groups;
24. Fix bug: when switching the wallet, Service unregister Messenger object cause an exception;
25. Click avatar in group chat navigate into contact detail page can sync the avatar.",
  "sha-1": "${hash by sha-1}"
}

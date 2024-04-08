// this policy is valid
permit (
    principal,
    action == Action::"View",
    resource is Document
);
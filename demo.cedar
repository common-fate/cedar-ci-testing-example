// this policy is valid
permit (
    principal,
    action == Action::"View",
    resource is Document
);

// this policy is invalid because it contains an action that is not in the Cedar schema.
permit (
    principal,
    action == Action::"Invalid",
    resource is Document
);

// this policy is invalid because it contains a resource that is not in the Cedar schema.
permit (
    principal,
    action == Action::"View",
    resource is Invalid
);

// this policy is invalid because it contains an attribute that is not in the Cedar schema.
permit (
    principal,
    action == Action::"View",
    resource is Document
)
when { resource.foo == "bar" };
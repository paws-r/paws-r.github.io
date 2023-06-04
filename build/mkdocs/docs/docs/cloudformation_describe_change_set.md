<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_describe_change_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the inputs for the change set and a list of changes that CloudFormation will make if you execute the change set

### Description

Returns the inputs for the change set and a list of changes that
CloudFormation will make if you execute the change set. For more
information, see [Updating Stacks Using Change
Sets](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html)
in the CloudFormation User Guide.

### Usage

    cloudformation_describe_change_set(ChangeSetName, StackName, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_describe_change_set_:_ChangeSetName">ChangeSetName</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the change
set that you want to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_change_set_:_StackName">StackName</code></td>
<td><p>If you specified the name of a change set, specify the stack name
or ID (ARN) of the change set you want to describe.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_describe_change_set_:_NextToken">NextToken</code></td>
<td><p>A string (provided by the <code>describe_change_set</code>
response output) that identifies the next page of information that you
want to retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeSetName = "string",
      ChangeSetId = "string",
      StackId = "string",
      StackName = "string",
      Description = "string",
      Parameters = list(
        list(
          ParameterKey = "string",
          ParameterValue = "string",
          UsePreviousValue = TRUE|FALSE,
          ResolvedValue = "string"
        )
      ),
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      ExecutionStatus = "UNAVAILABLE"|"AVAILABLE"|"EXECUTE_IN_PROGRESS"|"EXECUTE_COMPLETE"|"EXECUTE_FAILED"|"OBSOLETE",
      Status = "CREATE_PENDING"|"CREATE_IN_PROGRESS"|"CREATE_COMPLETE"|"DELETE_PENDING"|"DELETE_IN_PROGRESS"|"DELETE_COMPLETE"|"DELETE_FAILED"|"FAILED",
      StatusReason = "string",
      NotificationARNs = list(
        "string"
      ),
      RollbackConfiguration = list(
        RollbackTriggers = list(
          list(
            Arn = "string",
            Type = "string"
          )
        ),
        MonitoringTimeInMinutes = 123
      ),
      Capabilities = list(
        "CAPABILITY_IAM"|"CAPABILITY_NAMED_IAM"|"CAPABILITY_AUTO_EXPAND"
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      Changes = list(
        list(
          Type = "Resource",
          HookInvocationCount = 123,
          ResourceChange = list(
            Action = "Add"|"Modify"|"Remove"|"Import"|"Dynamic",
            LogicalResourceId = "string",
            PhysicalResourceId = "string",
            ResourceType = "string",
            Replacement = "True"|"False"|"Conditional",
            Scope = list(
              "Properties"|"Metadata"|"CreationPolicy"|"UpdatePolicy"|"DeletionPolicy"|"Tags"
            ),
            Details = list(
              list(
                Target = list(
                  Attribute = "Properties"|"Metadata"|"CreationPolicy"|"UpdatePolicy"|"DeletionPolicy"|"Tags",
                  Name = "string",
                  RequiresRecreation = "Never"|"Conditionally"|"Always"
                ),
                Evaluation = "Static"|"Dynamic",
                ChangeSource = "ResourceReference"|"ParameterReference"|"ResourceAttribute"|"DirectModification"|"Automatic",
                CausingEntity = "string"
              )
            ),
            ChangeSetId = "string",
            ModuleInfo = list(
              TypeHierarchy = "string",
              LogicalIdHierarchy = "string"
            )
          )
        )
      ),
      NextToken = "string",
      IncludeNestedStacks = TRUE|FALSE,
      ParentChangeSetId = "string",
      RootChangeSetId = "string"
    )

### Request syntax

    svc$describe_change_set(
      ChangeSetName = "string",
      StackName = "string",
      NextToken = "string"
    )

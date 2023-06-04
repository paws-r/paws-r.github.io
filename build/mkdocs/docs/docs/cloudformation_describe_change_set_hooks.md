<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_describe_change_set_hooks</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns hook-related information for the change set and a list of changes that CloudFormation makes when you run the change set

### Description

Returns hook-related information for the change set and a list of
changes that CloudFormation makes when you run the change set.

### Usage

    cloudformation_describe_change_set_hooks(ChangeSetName, StackName,
      NextToken, LogicalResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_describe_change_set_hooks_:_ChangeSetName">ChangeSetName</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the change
set that you want to describe.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_change_set_hooks_:_StackName">StackName</code></td>
<td><p>If you specified the name of a change set, specify the stack name
or stack ID (ARN) of the change set you want to describe.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_describe_change_set_hooks_:_NextToken">NextToken</code></td>
<td><p>A string, provided by the <code>describe_change_set_hooks</code>
response output, that identifies the next page of information that you
want to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_change_set_hooks_:_LogicalResourceId">LogicalResourceId</code></td>
<td><p>If specified, lists only the hooks related to the specified
<code>LogicalResourceId</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ChangeSetId = "string",
      ChangeSetName = "string",
      Hooks = list(
        list(
          InvocationPoint = "PRE_PROVISION",
          FailureMode = "FAIL"|"WARN",
          TypeName = "string",
          TypeVersionId = "string",
          TypeConfigurationVersionId = "string",
          TargetDetails = list(
            TargetType = "RESOURCE",
            ResourceTargetDetails = list(
              LogicalResourceId = "string",
              ResourceType = "string",
              ResourceAction = "Add"|"Modify"|"Remove"|"Import"|"Dynamic"
            )
          )
        )
      ),
      Status = "PLANNING"|"PLANNED"|"UNAVAILABLE",
      NextToken = "string",
      StackId = "string",
      StackName = "string"
    )

### Request syntax

    svc$describe_change_set_hooks(
      ChangeSetName = "string",
      StackName = "string",
      NextToken = "string",
      LogicalResourceId = "string"
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_describe_stack_resources</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns Amazon Web Services resource descriptions for running and deleted stacks

### Description

Returns Amazon Web Services resource descriptions for running and
deleted stacks. If `StackName` is specified, all the associated
resources that are part of the stack are returned. If
`PhysicalResourceId` is specified, the associated resources of the stack
that the resource belongs to are returned.

Only the first 100 resources will be returned. If your stack has more
resources than this, you should use `list_stack_resources` instead.

For deleted stacks, `describe_stack_resources` returns resource
information for up to 90 days after the stack has been deleted.

You must specify either `StackName` or `PhysicalResourceId`, but not
both. In addition, you can specify `LogicalResourceId` to filter the
returned result. For more information about resources, the
`LogicalResourceId` and `PhysicalResourceId`, go to the [CloudFormation
User
Guide](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/).

A `ValidationError` is returned if you specify both `StackName` and
`PhysicalResourceId` in the same request.

### Usage

    cloudformation_describe_stack_resources(StackName, LogicalResourceId,
      PhysicalResourceId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_describe_stack_resources_:_StackName">StackName</code></td>
<td><p>The name or the unique stack ID that is associated with the
stack, which aren't always interchangeable:</p>
<ul>
<li><p>Running stacks: You can specify either the stack's name or its
unique stack ID.</p></li>
<li><p>Deleted stacks: You must specify the unique stack ID.</p></li>
</ul>
<p>Default: There is no default value.</p>
<p>Required: Conditional. If you don't specify <code>StackName</code>,
you must specify <code>PhysicalResourceId</code>.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_describe_stack_resources_:_LogicalResourceId">LogicalResourceId</code></td>
<td><p>The logical name of the resource as specified in the
template.</p>
<p>Default: There is no default value.</p></td>
</tr>
<tr class="odd">
<td><code
id="cloudformation_describe_stack_resources_:_PhysicalResourceId">PhysicalResourceId</code></td>
<td><p>The name or unique identifier that corresponds to a physical
instance ID of a resource supported by CloudFormation.</p>
<p>For example, for an Amazon Elastic Compute Cloud (EC2) instance,
<code>PhysicalResourceId</code> corresponds to the
<code>InstanceId</code>. You can pass the EC2 <code>InstanceId</code> to
<code>describe_stack_resources</code> to find which stack the instance
belongs to and what other resources are part of the stack.</p>
<p>Required: Conditional. If you don't specify
<code>PhysicalResourceId</code>, you must specify
<code>StackName</code>.</p>
<p>Default: There is no default value.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackResources = list(
        list(
          StackName = "string",
          StackId = "string",
          LogicalResourceId = "string",
          PhysicalResourceId = "string",
          ResourceType = "string",
          Timestamp = as.POSIXct(
            "2015-01-01"
          ),
          ResourceStatus = "CREATE_IN_PROGRESS"|"CREATE_FAILED"|"CREATE_COMPLETE"|"DELETE_IN_PROGRESS"|"DELETE_FAILED"|"DELETE_COMPLETE"|"DELETE_SKIPPED"|"UPDATE_IN_PROGRESS"|"UPDATE_FAILED"|"UPDATE_COMPLETE"|"IMPORT_FAILED"|"IMPORT_COMPLETE"|"IMPORT_IN_PROGRESS"|"IMPORT_ROLLBACK_IN_PROGRESS"|"IMPORT_ROLLBACK_FAILED"|"IMPORT_ROLLBACK_COMPLETE"|"UPDATE_ROLLBACK_IN_PROGRESS"|"UPDATE_ROLLBACK_COMPLETE"|"UPDATE_ROLLBACK_FAILED"|"ROLLBACK_IN_PROGRESS"|"ROLLBACK_COMPLETE"|"ROLLBACK_FAILED",
          ResourceStatusReason = "string",
          Description = "string",
          DriftInformation = list(
            StackResourceDriftStatus = "IN_SYNC"|"MODIFIED"|"DELETED"|"NOT_CHECKED",
            LastCheckTimestamp = as.POSIXct(
              "2015-01-01"
            )
          ),
          ModuleInfo = list(
            TypeHierarchy = "string",
            LogicalIdHierarchy = "string"
          )
        )
      )
    )

### Request syntax

    svc$describe_stack_resources(
      StackName = "string",
      LogicalResourceId = "string",
      PhysicalResourceId = "string"
    )

<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_get_task_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Gets details about a specific task template in the specified Amazon Connect instance

### Description

Gets details about a specific task template in the specified Amazon
Connect instance.

### Usage

    connect_get_task_template(InstanceId, TaskTemplateId, SnapshotVersion)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_get_task_template_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_get_task_template_:_TaskTemplateId">TaskTemplateId</code></td>
<td><p>[required] A unique identifier for the task template.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_get_task_template_:_SnapshotVersion">SnapshotVersion</code></td>
<td><p>The system generated version of a task template that is
associated with a task, when the task is created.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      InstanceId = "string",
      Id = "string",
      Arn = "string",
      Name = "string",
      Description = "string",
      ContactFlowId = "string",
      Constraints = list(
        RequiredFields = list(
          list(
            Id = list(
              Name = "string"
            )
          )
        ),
        ReadOnlyFields = list(
          list(
            Id = list(
              Name = "string"
            )
          )
        ),
        InvisibleFields = list(
          list(
            Id = list(
              Name = "string"
            )
          )
        )
      ),
      Defaults = list(
        DefaultFieldValues = list(
          list(
            Id = list(
              Name = "string"
            ),
            DefaultValue = "string"
          )
        )
      ),
      Fields = list(
        list(
          Id = list(
            Name = "string"
          ),
          Description = "string",
          Type = "NAME"|"DESCRIPTION"|"SCHEDULED_TIME"|"QUICK_CONNECT"|"URL"|"NUMBER"|"TEXT"|"TEXT_AREA"|"DATE_TIME"|"BOOLEAN"|"SINGLE_SELECT"|"EMAIL",
          SingleSelectOptions = list(
            "string"
          )
        )
      ),
      Status = "ACTIVE"|"INACTIVE",
      LastModifiedTime = as.POSIXct(
        "2015-01-01"
      ),
      CreatedTime = as.POSIXct(
        "2015-01-01"
      ),
      Tags = list(
        "string"
      )
    )

### Request syntax

    svc$get_task_template(
      InstanceId = "string",
      TaskTemplateId = "string",
      SnapshotVersion = "string"
    )

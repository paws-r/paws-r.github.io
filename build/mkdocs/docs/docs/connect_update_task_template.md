<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_update_task_template</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates details about a specific task template in the specified Amazon Connect instance

### Description

Updates details about a specific task template in the specified Amazon
Connect instance. This operation does not support partial updates.
Instead it does a full update of template content.

### Usage

    connect_update_task_template(TaskTemplateId, InstanceId, Name,
      Description, ContactFlowId, Constraints, Defaults, Status, Fields)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_update_task_template_:_TaskTemplateId">TaskTemplateId</code></td>
<td><p>[required] A unique identifier for the task template.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_task_template_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_update_task_template_:_Name">Name</code></td>
<td><p>The name of the task template.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_task_template_:_Description">Description</code></td>
<td><p>The description of the task template.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_task_template_:_ContactFlowId">ContactFlowId</code></td>
<td><p>The identifier of the flow that runs by default when a task is
created by referencing this template.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_update_task_template_:_Constraints">Constraints</code></td>
<td><p>Constraints that are applicable to the fields listed.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_update_task_template_:_Defaults">Defaults</code></td>
<td><p>The default values for fields when a task is created by
referencing this template.</p></td>
</tr>
<tr class="even">
<td><code id="connect_update_task_template_:_Status">Status</code></td>
<td><p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code>
for a task to refer to it. Tasks can only be created from
<code>ACTIVE</code> templates. If a template is marked as
<code>INACTIVE</code>, then a task that refers to this template cannot
be created.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_update_task_template_:_Fields">Fields</code></td>
<td><p>Fields that are part of the template.</p></td>
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
      )
    )

### Request syntax

    svc$update_task_template(
      TaskTemplateId = "string",
      InstanceId = "string",
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
      Status = "ACTIVE"|"INACTIVE",
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
      )
    )

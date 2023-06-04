<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_task_templates</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists task templates for the specified Amazon Connect instance

### Description

Lists task templates for the specified Amazon Connect instance.

### Usage

    connect_list_task_templates(InstanceId, NextToken, MaxResults, Status,
      Name)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_task_templates_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_task_templates_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p>
<p>It is not expected that you set this because the value returned in
the previous response is always null.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_task_templates_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p>
<p>It is not expected that you set this.</p></td>
</tr>
<tr class="even">
<td><code id="connect_list_task_templates_:_Status">Status</code></td>
<td><p>Marks a template as <code>ACTIVE</code> or <code>INACTIVE</code>
for a task to refer to it. Tasks can only be created from
<code>ACTIVE</code> templates. If a template is marked as
<code>INACTIVE</code>, then a task that refers to this template cannot
be created.</p></td>
</tr>
<tr class="odd">
<td><code id="connect_list_task_templates_:_Name">Name</code></td>
<td><p>The name of the task template.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TaskTemplates = list(
        list(
          Id = "string",
          Arn = "string",
          Name = "string",
          Description = "string",
          Status = "ACTIVE"|"INACTIVE",
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          CreatedTime = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_task_templates(
      InstanceId = "string",
      NextToken = "string",
      MaxResults = 123,
      Status = "ACTIVE"|"INACTIVE",
      Name = "string"
    )

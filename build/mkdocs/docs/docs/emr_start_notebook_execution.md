<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>emr_start_notebook_execution</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a notebook execution

### Description

Starts a notebook execution.

### Usage

    emr_start_notebook_execution(EditorId, RelativePath,
      NotebookExecutionName, NotebookParams, ExecutionEngine, ServiceRole,
      NotebookInstanceSecurityGroupId, Tags, NotebookS3Location,
      OutputNotebookS3Location, OutputNotebookFormat, EnvironmentVariables)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="emr_start_notebook_execution_:_EditorId">EditorId</code></td>
<td><p>The unique identifier of the Amazon EMR Notebook to use for
notebook execution.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_start_notebook_execution_:_RelativePath">RelativePath</code></td>
<td><p>The path and file name of the notebook file for this execution,
relative to the path specified for the Amazon EMR Notebook. For example,
if you specify a path of <code
style="white-space: pre;">⁠s3://MyBucket/MyNotebooks⁠</code> when you
create an Amazon EMR Notebook for a notebook with an ID of
<code>e-ABCDEFGHIJK1234567890ABCD</code> (the <code>EditorID</code> of
this request), and you specify a <code>RelativePath</code> of
<code>my_notebook_executions/notebook_execution.ipynb</code>, the
location of the file for the notebook execution is <code
style="white-space: pre;">⁠s3://MyBucket/MyNotebooks/e-ABCDEFGHIJK1234567890ABCD/my_notebook_executions/notebook_execution.ipynb⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_start_notebook_execution_:_NotebookExecutionName">NotebookExecutionName</code></td>
<td><p>An optional name for the notebook execution.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_start_notebook_execution_:_NotebookParams">NotebookParams</code></td>
<td><p>Input parameters in JSON format passed to the Amazon EMR Notebook
at runtime for execution.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_start_notebook_execution_:_ExecutionEngine">ExecutionEngine</code></td>
<td><p>[required] Specifies the execution engine (cluster) that runs the
notebook execution.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_start_notebook_execution_:_ServiceRole">ServiceRole</code></td>
<td><p>[required] The name or ARN of the IAM role that is used as the
service role for Amazon EMR (the Amazon EMR role) for the notebook
execution.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_start_notebook_execution_:_NotebookInstanceSecurityGroupId">NotebookInstanceSecurityGroupId</code></td>
<td><p>The unique identifier of the Amazon EC2 security group to
associate with the Amazon EMR Notebook for this notebook
execution.</p></td>
</tr>
<tr class="even">
<td><code id="emr_start_notebook_execution_:_Tags">Tags</code></td>
<td><p>A list of tags associated with a notebook execution. Tags are
user-defined key-value pairs that consist of a required key string with
a maximum of 128 characters and an optional value string with a maximum
of 256 characters.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_start_notebook_execution_:_NotebookS3Location">NotebookS3Location</code></td>
<td><p>The Amazon S3 location for the notebook execution input.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_start_notebook_execution_:_OutputNotebookS3Location">OutputNotebookS3Location</code></td>
<td><p>The Amazon S3 location for the notebook execution
output.</p></td>
</tr>
<tr class="odd">
<td><code
id="emr_start_notebook_execution_:_OutputNotebookFormat">OutputNotebookFormat</code></td>
<td><p>The output format for the notebook execution.</p></td>
</tr>
<tr class="even">
<td><code
id="emr_start_notebook_execution_:_EnvironmentVariables">EnvironmentVariables</code></td>
<td><p>The environment variables associated with the notebook
execution.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NotebookExecutionId = "string"
    )

### Request syntax

    svc$start_notebook_execution(
      EditorId = "string",
      RelativePath = "string",
      NotebookExecutionName = "string",
      NotebookParams = "string",
      ExecutionEngine = list(
        Id = "string",
        Type = "EMR",
        MasterInstanceSecurityGroupId = "string",
        ExecutionRoleArn = "string"
      ),
      ServiceRole = "string",
      NotebookInstanceSecurityGroupId = "string",
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      NotebookS3Location = list(
        Bucket = "string",
        Key = "string"
      ),
      OutputNotebookS3Location = list(
        Bucket = "string",
        Key = "string"
      ),
      OutputNotebookFormat = "HTML",
      EnvironmentVariables = list(
        "string"
      )
    )

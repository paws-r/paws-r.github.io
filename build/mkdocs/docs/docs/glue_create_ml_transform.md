<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_create_ml_transform</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates an Glue machine learning transform

### Description

Creates an Glue machine learning transform. This operation creates the
transform and all the necessary parameters to train it.

Call this operation as the first step in the process of using a machine
learning transform (such as the `FindMatches` transform) for
deduplicating data. You can provide an optional `Description`, in
addition to the parameters that you want to use for your algorithm.

You must also specify certain parameters for the tasks that Glue runs on
your behalf as part of learning from your data and creating a
high-quality machine learning transform. These parameters include
`Role`, and optionally, `AllocatedCapacity`, `Timeout`, and
`MaxRetries`. For more information, see
[Jobs](https://docs.aws.amazon.com/glue/latest/dg/aws-glue-api-jobs-job.html).

### Usage

    glue_create_ml_transform(Name, Description, InputRecordTables,
      Parameters, Role, GlueVersion, MaxCapacity, WorkerType, NumberOfWorkers,
      Timeout, MaxRetries, Tags, TransformEncryption)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_create_ml_transform_:_Name">Name</code></td>
<td><p>[required] The unique name that you give the transform when you
create it.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_ml_transform_:_Description">Description</code></td>
<td><p>A description of the machine learning transform that is being
defined. The default is an empty string.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_ml_transform_:_InputRecordTables">InputRecordTables</code></td>
<td><p>[required] A list of Glue table definitions used by the
transform.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_ml_transform_:_Parameters">Parameters</code></td>
<td><p>[required] The algorithmic parameters that are specific to the
transform type used. Conditionally dependent on the transform
type.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_create_ml_transform_:_Role">Role</code></td>
<td><p>[required] The name or Amazon Resource Name (ARN) of the IAM role
with the required permissions. The required permissions include both
Glue service role permissions to Glue resources, and Amazon S3
permissions required by the transform.</p>
<ul>
<li><p>This role needs Glue service role permissions to allow access to
resources in Glue. See <a
href="https://docs.aws.amazon.com/glue/latest/dg/attach-policy-iam-user.html">Attach
a Policy to IAM Users That Access Glue</a>.</p></li>
<li><p>This role needs permission to your Amazon Simple Storage Service
(Amazon S3) sources, targets, temporary directory, scripts, and any
libraries used by the task run for this transform.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="glue_create_ml_transform_:_GlueVersion">GlueVersion</code></td>
<td><p>This value determines which version of Glue this machine learning
transform is compatible with. Glue 1.0 is recommended for most
customers. If the value is not set, the Glue compatibility defaults to
Glue 0.9. For more information, see <a
href="https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions">Glue
Versions</a> in the developer guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_ml_transform_:_MaxCapacity">MaxCapacity</code></td>
<td><p>The number of Glue data processing units (DPUs) that are
allocated to task runs for this transform. You can allocate from 2 to
100 DPUs; the default is 10. A DPU is a relative measure of processing
power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
For more information, see the <a
href="https://aws.amazon.com/glue/pricing/">Glue pricing page</a>.</p>
<p><code>MaxCapacity</code> is a mutually exclusive option with
<code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
<ul>
<li><p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code>
is set, then <code>MaxCapacity</code> cannot be set.</p></li>
<li><p>If <code>MaxCapacity</code> is set then neither
<code>NumberOfWorkers</code> or <code>WorkerType</code> can be
set.</p></li>
<li><p>If <code>WorkerType</code> is set, then
<code>NumberOfWorkers</code> is required (and vice versa).</p></li>
<li><p><code>MaxCapacity</code> and <code>NumberOfWorkers</code> must
both be at least 1.</p></li>
</ul>
<p>When the <code>WorkerType</code> field is set to a value other than
<code>Standard</code>, the <code>MaxCapacity</code> field is set
automatically and becomes read-only.</p>
<p>When the <code>WorkerType</code> field is set to a value other than
<code>Standard</code>, the <code>MaxCapacity</code> field is set
automatically and becomes read-only.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_create_ml_transform_:_WorkerType">WorkerType</code></td>
<td><p>The type of predefined worker that is allocated when this task
runs. Accepts a value of Standard, G.1X, or G.2X.</p>
<ul>
<li><p>For the <code>Standard</code> worker type, each worker provides 4
vCPU, 16 GB of memory and a 50GB disk, and 2 executors per
worker.</p></li>
<li><p>For the <code>G.1X</code> worker type, each worker provides 4
vCPU, 16 GB of memory and a 64GB disk, and 1 executor per
worker.</p></li>
<li><p>For the <code>G.2X</code> worker type, each worker provides 8
vCPU, 32 GB of memory and a 128GB disk, and 1 executor per
worker.</p></li>
</ul>
<p><code>MaxCapacity</code> is a mutually exclusive option with
<code>NumberOfWorkers</code> and <code>WorkerType</code>.</p>
<ul>
<li><p>If either <code>NumberOfWorkers</code> or <code>WorkerType</code>
is set, then <code>MaxCapacity</code> cannot be set.</p></li>
<li><p>If <code>MaxCapacity</code> is set then neither
<code>NumberOfWorkers</code> or <code>WorkerType</code> can be
set.</p></li>
<li><p>If <code>WorkerType</code> is set, then
<code>NumberOfWorkers</code> is required (and vice versa).</p></li>
<li><p><code>MaxCapacity</code> and <code>NumberOfWorkers</code> must
both be at least 1.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_ml_transform_:_NumberOfWorkers">NumberOfWorkers</code></td>
<td><p>The number of workers of a defined <code>workerType</code> that
are allocated when this task runs.</p>
<p>If <code>WorkerType</code> is set, then <code>NumberOfWorkers</code>
is required (and vice versa).</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_ml_transform_:_Timeout">Timeout</code></td>
<td><p>The timeout of the task run for this transform in minutes. This
is the maximum time that a task run for this transform can consume
resources before it is terminated and enters <code>TIMEOUT</code>
status. The default is 2,880 minutes (48 hours).</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_ml_transform_:_MaxRetries">MaxRetries</code></td>
<td><p>The maximum number of times to retry a task for this transform
after a task run fails.</p></td>
</tr>
<tr class="even">
<td><code id="glue_create_ml_transform_:_Tags">Tags</code></td>
<td><p>The tags to use with this machine learning transform. You may use
tags to limit access to the machine learning transform. For more
information about tags in Glue, see <a
href="https://docs.aws.amazon.com/glue/latest/dg/monitor-tags.html">Amazon
Web Services Tags in Glue</a> in the developer guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_create_ml_transform_:_TransformEncryption">TransformEncryption</code></td>
<td><p>The encryption-at-rest settings of the transform that apply to
accessing user data. Machine learning transforms can access user data
encrypted in Amazon S3 using KMS.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransformId = "string"
    )

### Request syntax

    svc$create_ml_transform(
      Name = "string",
      Description = "string",
      InputRecordTables = list(
        list(
          DatabaseName = "string",
          TableName = "string",
          CatalogId = "string",
          ConnectionName = "string",
          AdditionalOptions = list(
            "string"
          )
        )
      ),
      Parameters = list(
        TransformType = "FIND_MATCHES",
        FindMatchesParameters = list(
          PrimaryKeyColumnName = "string",
          PrecisionRecallTradeoff = 123.0,
          AccuracyCostTradeoff = 123.0,
          EnforceProvidedLabels = TRUE|FALSE
        )
      ),
      Role = "string",
      GlueVersion = "string",
      MaxCapacity = 123.0,
      WorkerType = "Standard"|"G.1X"|"G.2X"|"G.025X"|"G.4X"|"G.8X",
      NumberOfWorkers = 123,
      Timeout = 123,
      MaxRetries = 123,
      Tags = list(
        "string"
      ),
      TransformEncryption = list(
        MlUserDataEncryption = list(
          MlUserDataEncryptionMode = "DISABLED"|"SSE-KMS",
          KmsKeyId = "string"
        ),
        TaskRunSecurityConfigurationName = "string"
      )
    )

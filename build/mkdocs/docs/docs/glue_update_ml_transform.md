<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_ml_transform</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates an existing machine learning transform

### Description

Updates an existing machine learning transform. Call this operation to
tune the algorithm parameters to achieve better results.

After calling this operation, you can call the
`start_ml_evaluation_task_run` operation to assess how well your new
parameters achieved your goals (such as improving the quality of your
machine learning transform, or making it more cost-effective).

### Usage

    glue_update_ml_transform(TransformId, Name, Description, Parameters,
      Role, GlueVersion, MaxCapacity, WorkerType, NumberOfWorkers, Timeout,
      MaxRetries)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_update_ml_transform_:_TransformId">TransformId</code></td>
<td><p>[required] A unique identifier that was generated when the
transform was created.</p></td>
</tr>
<tr class="even">
<td><code id="glue_update_ml_transform_:_Name">Name</code></td>
<td><p>The unique name that you gave the transform when you created
it.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_ml_transform_:_Description">Description</code></td>
<td><p>A description of the transform. The default is an empty
string.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_ml_transform_:_Parameters">Parameters</code></td>
<td><p>The configuration parameters that are specific to the transform
type (algorithm) used. Conditionally dependent on the transform
type.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_update_ml_transform_:_Role">Role</code></td>
<td><p>The name or Amazon Resource Name (ARN) of the IAM role with the
required permissions.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_ml_transform_:_GlueVersion">GlueVersion</code></td>
<td><p>This value determines which version of Glue this machine learning
transform is compatible with. Glue 1.0 is recommended for most
customers. If the value is not set, the Glue compatibility defaults to
Glue 0.9. For more information, see <a
href="https://docs.aws.amazon.com/glue/latest/dg/release-notes.html#release-notes-versions">Glue
Versions</a> in the developer guide.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_ml_transform_:_MaxCapacity">MaxCapacity</code></td>
<td><p>The number of Glue data processing units (DPUs) that are
allocated to task runs for this transform. You can allocate from 2 to
100 DPUs; the default is 10. A DPU is a relative measure of processing
power that consists of 4 vCPUs of compute capacity and 16 GB of memory.
For more information, see the <a
href="https://aws.amazon.com/glue/pricing/">Glue pricing page</a>.</p>
<p>When the <code>WorkerType</code> field is set to a value other than
<code>Standard</code>, the <code>MaxCapacity</code> field is set
automatically and becomes read-only.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_ml_transform_:_WorkerType">WorkerType</code></td>
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
</ul></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_ml_transform_:_NumberOfWorkers">NumberOfWorkers</code></td>
<td><p>The number of workers of a defined <code>workerType</code> that
are allocated when this task runs.</p></td>
</tr>
<tr class="even">
<td><code id="glue_update_ml_transform_:_Timeout">Timeout</code></td>
<td><p>The timeout for a task run for this transform in minutes. This is
the maximum time that a task run for this transform can consume
resources before it is terminated and enters <code>TIMEOUT</code>
status. The default is 2,880 minutes (48 hours).</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_ml_transform_:_MaxRetries">MaxRetries</code></td>
<td><p>The maximum number of times to retry a task for this transform
after a task run fails.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      TransformId = "string"
    )

### Request syntax

    svc$update_ml_transform(
      TransformId = "string",
      Name = "string",
      Description = "string",
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
      MaxRetries = 123
    )

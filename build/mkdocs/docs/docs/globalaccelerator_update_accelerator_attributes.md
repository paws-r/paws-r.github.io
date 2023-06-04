<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>globalaccelerator_update_accelerator_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Update the attributes for an accelerator

### Description

Update the attributes for an accelerator.

### Usage

    globalaccelerator_update_accelerator_attributes(AcceleratorArn,
      FlowLogsEnabled, FlowLogsS3Bucket, FlowLogsS3Prefix)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="globalaccelerator_update_accelerator_attributes_:_AcceleratorArn">AcceleratorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the accelerator that
you want to update.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_update_accelerator_attributes_:_FlowLogsEnabled">FlowLogsEnabled</code></td>
<td><p>Update whether flow logs are enabled. The default value is false.
If the value is true, <code>FlowLogsS3Bucket</code> and
<code>FlowLogsS3Prefix</code> must be specified.</p>
<p>For more information, see <a
href="https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html">Flow
Logs</a> in the <em>Global Accelerator Developer Guide</em>.</p></td>
</tr>
<tr class="odd">
<td><code
id="globalaccelerator_update_accelerator_attributes_:_FlowLogsS3Bucket">FlowLogsS3Bucket</code></td>
<td><p>The name of the Amazon S3 bucket for the flow logs. Attribute is
required if <code>FlowLogsEnabled</code> is <code>true</code>. The
bucket must exist and have a bucket policy that grants Global
Accelerator permission to write to the bucket.</p></td>
</tr>
<tr class="even">
<td><code
id="globalaccelerator_update_accelerator_attributes_:_FlowLogsS3Prefix">FlowLogsS3Prefix</code></td>
<td><p>Update the prefix for the location in the Amazon S3 bucket for
the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
<code>true</code>.</p>
<p>If you specify slash (/) for the S3 bucket prefix, the log file
bucket folder structure will include a double slash (//), like the
following:</p>
<p>s3-bucket_name//AWSLogs/aws_account_id</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      AcceleratorAttributes = list(
        FlowLogsEnabled = TRUE|FALSE,
        FlowLogsS3Bucket = "string",
        FlowLogsS3Prefix = "string"
      )
    )

### Request syntax

    svc$update_accelerator_attributes(
      AcceleratorArn = "string",
      FlowLogsEnabled = TRUE|FALSE,
      FlowLogsS3Bucket = "string",
      FlowLogsS3Prefix = "string"
    )

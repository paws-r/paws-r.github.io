<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudfront_delete_realtime_log_config</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a real-time log configuration

### Description

Deletes a real-time log configuration.

You cannot delete a real-time log configuration if it's attached to a
cache behavior. First update your distributions to remove the real-time
log configuration from all cache behaviors, then delete the real-time
log configuration.

To delete a real-time log configuration, you can provide the
configuration's name or its Amazon Resource Name (ARN). You must provide
at least one. If you provide both, CloudFront uses the name to identify
the real-time log configuration to delete.

### Usage

    cloudfront_delete_realtime_log_config(Name, ARN)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudfront_delete_realtime_log_config_:_Name">Name</code></td>
<td><p>The name of the real-time log configuration to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudfront_delete_realtime_log_config_:_ARN">ARN</code></td>
<td><p>The Amazon Resource Name (ARN) of the real-time log configuration
to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_realtime_log_config(
      Name = "string",
      ARN = "string"
    )

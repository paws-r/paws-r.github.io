<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_describe_logging_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the logging configuration for the specified firewall

### Description

Returns the logging configuration for the specified firewall.

### Usage

    networkfirewall_describe_logging_configuration(FirewallArn,
      FirewallName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_describe_logging_configuration_:_FirewallArn">FirewallArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the firewall.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_describe_logging_configuration_:_FirewallName">FirewallName</code></td>
<td><p>The descriptive name of the firewall. You can't change the name
of a firewall after you create it.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FirewallArn = "string",
      LoggingConfiguration = list(
        LogDestinationConfigs = list(
          list(
            LogType = "ALERT"|"FLOW",
            LogDestinationType = "S3"|"CloudWatchLogs"|"KinesisDataFirehose",
            LogDestination = list(
              "string"
            )
          )
        )
      )
    )

### Request syntax

    svc$describe_logging_configuration(
      FirewallArn = "string",
      FirewallName = "string"
    )

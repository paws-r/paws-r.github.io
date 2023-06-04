<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>networkfirewall_update_logging_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sets the logging configuration for the specified firewall

### Description

Sets the logging configuration for the specified firewall.

To change the logging configuration, retrieve the LoggingConfiguration
by calling `describe_logging_configuration`, then change it and provide
the modified object to this update call. You must change the logging
configuration one LogDestinationConfig at a time inside the retrieved
LoggingConfiguration object.

You can perform only one of the following actions in any call to
`update_logging_configuration`:

-   Create a new log destination object by adding a single
    `LogDestinationConfig` array element to `LogDestinationConfigs`.

-   Delete a log destination object by removing a single
    `LogDestinationConfig` array element from `LogDestinationConfigs`.

-   Change the `LogDestination` setting in a single
    `LogDestinationConfig` array element.

You can't change the `LogDestinationType` or `LogType` in a
`LogDestinationConfig`. To change these settings, delete the existing
`LogDestinationConfig` object and create a new one, using two separate
calls to this update operation.

### Usage

    networkfirewall_update_logging_configuration(FirewallArn, FirewallName,
      LoggingConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="networkfirewall_update_logging_configuration_:_FirewallArn">FirewallArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the firewall.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="even">
<td><code
id="networkfirewall_update_logging_configuration_:_FirewallName">FirewallName</code></td>
<td><p>The descriptive name of the firewall. You can't change the name
of a firewall after you create it.</p>
<p>You must specify the ARN or the name, and you can specify
both.</p></td>
</tr>
<tr class="odd">
<td><code
id="networkfirewall_update_logging_configuration_:_LoggingConfiguration">LoggingConfiguration</code></td>
<td><p>Defines how Network Firewall performs logging for a firewall. If
you omit this setting, Network Firewall disables logging for the
firewall.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FirewallArn = "string",
      FirewallName = "string",
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

    svc$update_logging_configuration(
      FirewallArn = "string",
      FirewallName = "string",
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

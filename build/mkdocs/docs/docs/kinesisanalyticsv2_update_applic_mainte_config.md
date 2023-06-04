<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kinesisanalyticsv2_update_application_maintenance_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the maintenance configuration of the Kinesis Data Analytics application

### Description

Updates the maintenance configuration of the Kinesis Data Analytics
application.

You can invoke this operation on an application that is in one of the
two following states: `READY` or `RUNNING`. If you invoke it when the
application is in a state other than these two states, it throws a
`ResourceInUseException`. The service makes use of the updated
configuration the next time it schedules maintenance for the
application. If you invoke this operation after the service schedules
maintenance, the service will apply the configuration update the next
time it schedules maintenance for the application. This means that you
might not see the maintenance configuration update applied to the
maintenance process that follows a successful invocation of this
operation, but to the following maintenance process instead.

To see the current maintenance configuration of your application, invoke
the `describe_application` operation.

For information about application maintenance, see [Kinesis Data
Analytics for Apache Flink
Maintenance](https://docs.aws.amazon.com/kinesisanalytics/latest/java/maintenance.html).

This operation is supported only for Amazon Kinesis Data Analytics for
Apache Flink.

### Usage

    kinesisanalyticsv2_update_application_maintenance_configuration(
      ApplicationName, ApplicationMaintenanceConfigurationUpdate)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kinesisanalyticsv2_update_application_maintenance_configuration_:_ApplicationName">ApplicationName</code></td>
<td><p>[required] The name of the application for which you want to
update the maintenance configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kinesisanalyticsv2_update_application_maintenance_configuration_:_ApplicationMaintenanceConfigurationUpdate">ApplicationMaintenanceConfigurationUpdate</code></td>
<td><p>[required] Describes the application maintenance configuration
update.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ApplicationARN = "string",
      ApplicationMaintenanceConfigurationDescription = list(
        ApplicationMaintenanceWindowStartTime = "string",
        ApplicationMaintenanceWindowEndTime = "string"
      )
    )

### Request syntax

    svc$update_application_maintenance_configuration(
      ApplicationName = "string",
      ApplicationMaintenanceConfigurationUpdate = list(
        ApplicationMaintenanceWindowStartTimeUpdate = "string"
      )
    )

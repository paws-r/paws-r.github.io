<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_put_retention_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates and updates the retention configuration with details about retention period (number of days) that Config stores your historical information

### Description

Creates and updates the retention configuration with details about
retention period (number of days) that Config stores your historical
information. The API creates the `RetentionConfiguration` object and
names the object as **default**. When you have a
`RetentionConfiguration` object named **default**, calling the API
modifies the default object.

Currently, Config supports only one retention configuration per region
in your account.

### Usage

    configservice_put_retention_configuration(RetentionPeriodInDays)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_put_retention_configuration_:_RetentionPeriodInDays">RetentionPeriodInDays</code></td>
<td><p>[required] Number of days Config stores your historical
information.</p>
<p>Currently, only applicable to the configuration item
history.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RetentionConfiguration = list(
        Name = "string",
        RetentionPeriodInDays = 123
      )
    )

### Request syntax

    svc$put_retention_configuration(
      RetentionPeriodInDays = 123
    )

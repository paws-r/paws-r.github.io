<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafkaconnect_describe_worker_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns information about a worker configuration

### Description

Returns information about a worker configuration.

### Usage

    kafkaconnect_describe_worker_configuration(workerConfigurationArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafkaconnect_describe_worker_configuration_:_workerConfigurationArn">workerConfigurationArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the worker
configuration that you want to get information about.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      creationTime = as.POSIXct(
        "2015-01-01"
      ),
      description = "string",
      latestRevision = list(
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        description = "string",
        propertiesFileContent = "string",
        revision = 123
      ),
      name = "string",
      workerConfigurationArn = "string"
    )

### Request syntax

    svc$describe_worker_configuration(
      workerConfigurationArn = "string"
    )

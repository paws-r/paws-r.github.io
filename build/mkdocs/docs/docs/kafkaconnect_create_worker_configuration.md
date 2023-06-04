<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>kafkaconnect_create_worker_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a worker configuration using the specified properties

### Description

Creates a worker configuration using the specified properties.

### Usage

    kafkaconnect_create_worker_configuration(description, name,
      propertiesFileContent)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="kafkaconnect_create_worker_configuration_:_description">description</code></td>
<td><p>A summary description of the worker configuration.</p></td>
</tr>
<tr class="even">
<td><code
id="kafkaconnect_create_worker_configuration_:_name">name</code></td>
<td><p>[required] The name of the worker configuration.</p></td>
</tr>
<tr class="odd">
<td><code
id="kafkaconnect_create_worker_configuration_:_propertiesFileContent">propertiesFileContent</code></td>
<td><p>[required] Base64 encoded contents of
connect-distributed.properties file.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      creationTime = as.POSIXct(
        "2015-01-01"
      ),
      latestRevision = list(
        creationTime = as.POSIXct(
          "2015-01-01"
        ),
        description = "string",
        revision = 123
      ),
      name = "string",
      workerConfigurationArn = "string"
    )

### Request syntax

    svc$create_worker_configuration(
      description = "string",
      name = "string",
      propertiesFileContent = "string"
    )

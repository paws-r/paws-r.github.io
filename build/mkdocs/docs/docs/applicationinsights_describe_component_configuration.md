<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>applicationinsights_describe_component_configuration</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes the monitoring configuration of the component

### Description

Describes the monitoring configuration of the component.

### Usage

    applicationinsights_describe_component_configuration(ResourceGroupName,
      ComponentName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="applicationinsights_describe_component_configuration_:_ResourceGroupName">ResourceGroupName</code></td>
<td><p>[required] The name of the resource group.</p></td>
</tr>
<tr class="even">
<td><code
id="applicationinsights_describe_component_configuration_:_ComponentName">ComponentName</code></td>
<td><p>[required] The name of the component.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Monitor = TRUE|FALSE,
      Tier = "CUSTOM"|"DEFAULT"|"DOT_NET_CORE"|"DOT_NET_WORKER"|"DOT_NET_WEB_TIER"|"DOT_NET_WEB"|"SQL_SERVER"|"SQL_SERVER_ALWAYSON_AVAILABILITY_GROUP"|"MYSQL"|"POSTGRESQL"|"JAVA_JMX"|"ORACLE"|"SAP_HANA_MULTI_NODE"|"SAP_HANA_SINGLE_NODE"|"SAP_HANA_HIGH_AVAILABILITY"|"SQL_SERVER_FAILOVER_CLUSTER_INSTANCE"|"SHAREPOINT"|"ACTIVE_DIRECTORY",
      ComponentConfiguration = "string"
    )

### Request syntax

    svc$describe_component_configuration(
      ResourceGroupName = "string",
      ComponentName = "string"
    )

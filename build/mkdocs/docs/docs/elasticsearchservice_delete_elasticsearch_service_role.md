<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>elasticsearchservice_delete_elasticsearch_service_role</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes the service-linked role that Elasticsearch Service uses to manage and maintain VPC domains

### Description

Deletes the service-linked role that Elasticsearch Service uses to
manage and maintain VPC domains. Role deletion will fail if any existing
VPC domains use the role. You must delete any such Elasticsearch domains
before deleting the role. See <a
href="https://docs.aws.amazon.com/opensearch-service/latest/developerguide/vpc.html#es-enabling-slr"
target="_blank">Deleting Elasticsearch Service Role</a> in *VPC
Endpoints for Amazon Elasticsearch Service Domains*.

### Usage

    elasticsearchservice_delete_elasticsearch_service_role()

### Value

An empty list.

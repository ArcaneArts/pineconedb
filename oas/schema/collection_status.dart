part of pinecone_schema;

/// An enumeration of the available pod types.
final schemaCollectionStatus = Schema.enumeration(
  description: 'The current status of the collection',
  values: [
    'Initializing',
    'Ready',
  ],
);

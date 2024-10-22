<xs:schema xmlns:xs="">

  <xs:element name="almacen">
    <xs:complexType>
      <xs:sequence>
        <xs:element name="articulo" maxOccurs="unbounded">
          <xs:complexType>
            <xs:sequence>
              <xs:element name="nombre" type="xs:string" minOccurs="1" maxOccurs="1"/>
              <xs:element name="precio" type="xs:decimal" minOccurs="1" maxOccurs="1"/>
              <xs:element name="existencias" type="xs:nonNegativeInteger" minOccurs="1" maxOccurs="1"/>
              <xs:element name="seccion" type="xs:string" minOccurs="1" maxOccurs="1"/>
            </xs:sequence>
          </xs:complexType>
        </xs:element>
      </xs:sequence>
    </xs:complexType>
  </xs:element>

</xs:schema>
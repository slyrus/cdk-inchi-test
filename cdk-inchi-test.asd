
(eval-when (:compile-toplevel :load-toplevel :execute)
  (cl:require 'abcl-contrib)
  (cl:require 'abcl-asdf)
  (cl:require 'jss)
  (cl:require 'extensible-sequences)
  (cl:require 'java-collections))

(asdf:defsystem :cdk-inchi-test
  :name "cdk-inchi-test"
  :serial t
  :defsystem-depends-on (asdf-mvn-module)
  :components
  ((:mvn-module cdk
                :dependencies
                ("org.openscience.cdk/cdk-annotation/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-atomtype/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-builder3d/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-builder3dtools/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-charges/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-cip/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-control/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-core/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-ctab/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-data/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-datadebug/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-depict/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-dict/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-diff/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-extra/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-fingerprint/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-forcefield/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-formula/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-fragment/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-group/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-hash/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-inchi/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-interfaces/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-io/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-ioformats/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-ionpot/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-iordf/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-isomorphism/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-jniinchi-support/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-legacy/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-libiocml/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-libiomd/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-log4j/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-model/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-pcore/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-pdb/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-pdbcml/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-qm/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-qsar/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-qsaratomic/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-qsarbond/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-qsarcml/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-qsarionpot/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-qsarmolecular/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-qsarprotein/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-qsarsubstance/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-reaction/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-render/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-renderawt/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-renderbasic/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-renderextra/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-sdg/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-silent/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-signature/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-smarts/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-smiles/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-standard/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-structgen/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-tautomer/2.8-SNAPSHOT"
                 "org.openscience.cdk/cdk-valencycheck/2.8-SNAPSHOT"

                 "xom/xom/1.3.7"

                 "javax.vecmath/vecmath/1.5.2"

                 "gov.nist.math/jama/1.0.3"

                 "commons-io/commons-io/2.5"
                 "commons-cli/commons-cli/1.4"

                 "io.github.dan2097/jna-inchi-api/1.1"
                 "io.github.dan2097/jna-inchi-core/1.1"
                 
                 "org.apache.logging.log4j/log4j-api/2.18.0"
                 "org.apache.logging.log4j/log4j-core/2.18.0"
                 "org.apache.logging.log4j/log4j-1.2-api/2.18.0"

                 "xerces/xercesImpl/2.12.2"

                 "xml-apis/xml-apis/1.4.01"))
   
   (:file "package")
   (:file "cdk-inchi-test")))


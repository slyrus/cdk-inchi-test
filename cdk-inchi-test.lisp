
(cl:in-package #:cdk-inchi-test)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (set-dispatch-macro-character #\# #\" 'jss::read-invoke))

(defparameter *smiles-parser*
  (java:jnew "org.openscience.cdk.smiles.SmilesParser" 
             (java:jstatic "getInstance" "org.openscience.cdk.silent.SilentChemObjectBuilder")))

(defun parse-smiles (smiles-string)
  (#"parseSmiles" *smiles-parser* smiles-string))

(defparameter *inchi-factory*
  (java:jstatic "getInstance" "org.openscience.cdk.inchi.InChIGeneratorFactory"))

(defun get-inchi (atom-container)
  (let* ((gen (#"getInChIGenerator" *inchi-factory* atom-container "")))
    (values (#"getInchi" gen)
            (#"getAuxInfo" gen))))

(defun get-inchi-key (atom-container)
  (let* ((gen (#"getInChIGenerator" *inchi-factory* atom-container)))
    (#"getInchiKey" gen)))

(get-inchi-key
 (parse-smiles "B([C@H](CC(C)C)NC(=O)[C@H](CC1=CC=CC=C1)NC(=O)C2=NC=CN=C2)(O)O"))

% Define symptoms and associated diseases.
symptom(fever, flu).
symptom(cough, flu).
symptom(sore_throat, flu).
symptom(headache, migraine).
symptom(nausea, migraine).
symptom(vomiting, migraine).

% Define diagnostic rules.
diagnosis(Patient, Disease) :-
    symptom(Symptom, Disease),
    has_symptom(Patient, Symptom).

% Example usage:
% ?- diagnosis(john, flu).

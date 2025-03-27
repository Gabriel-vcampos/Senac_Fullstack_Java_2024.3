import { Schema } from "mongoose";

export const PersonagemSchema = new Schema({
    name: { type: String, required: true},
    QI: { type: Number, required: true},
    age: { type: String, required: true},
    gun: {type: String, required: true}
});
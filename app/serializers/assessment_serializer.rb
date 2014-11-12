class AssessmentSerializer < ActiveModel::Serializer
  attributes :id, :subscapularis, :triceps, :chest, :axilar, :supra, :abs, :thigh, :height, :weight, :bmi, :bodyfat
  has_one :coach
  has_one :gym
  has_one :pupil
end
